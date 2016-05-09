"use strict";
var C = require('./config/index');
var co =require('co');
let later = require('later');
later.date.localTime();
let _ = require('underscore');
_.str = require('underscore.string');
_.v = require('validator');
let config = require('./config/index');
const sub= require('./db/redis');
var mysql = require('./db/mysql');
var wrap = require('co-redis');

function* popAndQuery(){
	 //执行队列操作，更新订单状态
    		 
    		  	 let info = yield mysql.query("select * from order_code limit 1");
    		  	 console.log(JSON.parse(JSON.stringify(info)));

    		  	  let ret = yield sub.RPOP(C.queue).exec();
                 console.log('ret is %s',ret);
}


     //监听频道消息    	
    	sub.on("message",function(channel,message){
    	   console.log("收到来自频道：%s的消息：%s",channel,message); 
          
             try{
                    //sub模式下开启新的客户端
	    			sub.duplicate(function(err,client){
	    				co(function*(){
	    					
	    					//客户端重新包装成promise
	    					client = wrap(client);
	    					
	    					//取队列订单号
	             			let order_code =  yield client.RPOP(C.queue);
	             			console.log("从队列弹出订单号：%s",order_code);
	             			
	             			//根据订单号查询订单表数据
	             			if(order_code){
	             			 let ret = yield mysql.query("update order_code set status = 1,timeline = UNIX_TIMESTAMP() where order_code =?",[order_code]);
	             			 if(ret.affectedRows > 0){
	             			 	console.log('update ok!!');
	             			 }

	             			}



             		      }).catch(function(err){console.log(err)});

    
             		});


             		
             		
     








             }catch(err){
             		console.log(err);
             }
          
           

    	});


    
    //订阅频道
    co(function* () {
    	let ret = yield sub.subscribe(C.channel);
    	if(ret){
    		console.log("成功订阅了频道：%s",ret);
    	}

      }).catch(function(err){
    	console.log(err);
    });
  


