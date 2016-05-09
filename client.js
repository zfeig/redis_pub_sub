"use strict";
var C = require('./config/index');
var co =require('co');
let later = require('later');
later.date.localTime();
let _ = require('underscore');
_.str = require('underscore.string');
_.v = require('validator');
let config = require('./config/index');
let sub= require('./db/redis');
var mysql = require('./db/mysql');

function Dispatcher(cb) {
    co(function* () {
     
        //监听频道消息    	
    	sub.on("message",function(channel,message){
    		  console.log("收到来自频道：%s的消息：%s",channel,message);
    	});
       
    	//订阅频道
    	let ret = yield sub.subscribe(C.channel);
    	if(ret){
    		console.log("成功订阅了频道：%s",ret);
    	}
    	

      }).
    catch(function(err){
    	console.log(err);
    });
    cb();
}


Dispatcher(function(){
	//console.log('get data!');
});



// //【主任务计时器，启动主任务】
// let timer_sched = later.parse.recur().every(C.client.time).second();
// let t = later.setInterval(function () { 
//    	Dispatcher(function(){
   		
//    	});	
// }, timer_sched);




	// sub.on("subscibe",function(channel,count){
 //    			console.log("订阅了：%s频道，订阅数：%s",channel,count);
 //    	});

	// sub.on("message",function(channel,message){
	// 	  console.log("收到来自频道：%s的消息：%s",channel,message);
	// });

 //   sub.subscribe(C.channel);