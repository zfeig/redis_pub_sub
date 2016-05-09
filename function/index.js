'use strict';
var C = require('../config/index');
module.exports.getUniStr = function(){
	let seed ="abcdefg452".split('');
    let rand = "";
    for(let i of seed){
    	let index = parseInt(Math.random()*10);
    	rand += seed[index];
    }
	let timestr = parseInt(new Date().valueOf()/1000);
    return timestr+rand;
}