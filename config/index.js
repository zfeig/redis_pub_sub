module.exports ={
	"time":20,
	"channel":"payment",
	"queue":"order_out_no",
	"redis":{
		"port":6379,
		"host":"192.168.145.241",
		"options":{
			auth_pass: ''
		}
	},
	"mysql":{
		"dbhost":"127.0.0.1",
		"port":3306,
		"user":"root",
		"password":"root",
		"database":"test"
	},
	"client":{
		"time":40
	}
}