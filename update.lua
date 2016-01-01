 event = require("event")
 fs = require("filesystem")
 component = require("component")
 computer = require("computer")
 event = require("event")
 keyboard = require("keyboard")
 text = require("text")
 unicode = require("unicode")
 local serial = require("serialization")
 serialization = require("serialization") 
 process = require("process")
 note = require("note")
 shell = require("shell")
 colors = require("colors")
 local com = require("component")
local internet = com.internet
  wget = loadfile("/bin/wget.lua")
  wget("https:\\ya.ru","/s")
----  res, response = internet.request("https:\\ya.ru");

--function  get_value()
--local content = ""
--  res, response = pcall(internet.request("https:\\ya.ru"));
--for chunk in res do 
--content = content .. chunk 
--end
--return content
--end
--var = serial.unserialize(content)
--print (var.."|||");
--function  get_request(url)
--if url == nil then 
--url = ""
--  internet.request("http:\\"..url, data )
--  return data
--end

--return req
--end
--function req__ ()
--  otvet =  get_request("yandex.ru")
--print (otvet);
--end
--req__();