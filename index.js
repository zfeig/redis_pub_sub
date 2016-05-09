/**
 * Created by no1 on 2015/10/23.
 */
'use strict';
let co = require('co');
let later = require('later');
later.date.localTime();
let _ = require('underscore');
_.str = require('underscore.string');
_.v = require('validator');
let config = require('./config/index');
let Credis= require('./db/redis');
let mysql = require('./db/mysql');
let count = 0;
let F = require('./function/index');

function Dispatcher(cb) {
    co(function* () {
	    	
         //获取模拟订单号
         let order_code =  F.getUniStr();

    	 //定时发布payment频道，并将数据加入到队列
    	 let ret = yield Credis.publish(config.channel,"random num is: "+order_code);//ret为订阅的用户数
    	 console.log('push content is:%s,result is %d',order_code,ret);
    	 if(ret){
    	 	yield Credis.lpush(config.queue,order_code);//将订单号压入队列
    	 	yield mysql.query("insert into order_code(order_code,timeline) values(?,UNIX_TIMESTAMP())",[order_code]);//写入mysql表
    	 }
         count++;
      }).catch(function(err){
    	console.log(err);
    });
    cb();
}

Dispatcher(function(){
	console.log('get data!');
})


//【主任务计时器，启动主任务】
let timer_sched = later.parse.recur().every(config.time).second();
let t = later.setInterval(function () { 
   	Dispatcher(function(){
   		console.log("counter is %d",count);
   		if(count >= 10){
   			process.exit();
   		}
   	});	
}, timer_sched);




