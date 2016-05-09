var config = require("../config/index");
var redis = require('redis');
var redisClient = redis.createClient(config.redis.port, config.redis.host, config.redis.options);
if(redisClient){
    console.log('redis is start ok!');
}
var wrapper = require('co-redis');
module.exports = wrapper(redisClient);