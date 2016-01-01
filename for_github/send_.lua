 event = require("event")
 fs = require("filesystem")
 component = require("component")
 computer = require("computer")
 event = require("event")
 keyboard = require("keyboard")
 text = require("text")
 unicode = require("unicode")
 serialization = require("serialization") 
 process = require("process")
 note = require("note")
 shell = require("shell")
 colors = require("colors")
 RAM = require("mem")
 MoDeM = component.modem
  io_ = require("io")
 
 
print ("pkg loaded")
 print("test, wi-fi or no ")
 local wifi = MoDeM.isWireless()
 if  wifi == true then 
 print ("Wi-fi")
 else 
 print ("no wi-fi")
 end
 

  function Modem()
   MoDeM.open(2525)
   a =true
   return a
   end
   Modem()
 if Modem() == true then
 print ("Port open")
 else 
 print("port no open")
 end

 function Send(data)
 print ("Data "..data .." sended")
 MoDeM.broadcast(2525,data)
end

 a = io_.read()
 if a ~= nil then 
 Send(a)
 end
 