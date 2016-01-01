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
  term = require("term")
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
 
 --start listen port 2525
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
-- while true do
 function global()
 --pocket pc
 function Recive()
 
while true do
  name, _, sender, _, _, message = computer.pullSignal(2)
  if name == 'modem_message' then
  
 print (message)
-- local msg = message
--if msg == "reboot" then
--shell.execute("reboot")
--shell.execute(msg)
--local ss = term.write()
--Send(ss)
reset()
 end
  end
 --end

 end 
 function Send(data)
 print ("Data "..data .." sended")
 MoDeM.broadcast(2525,data)
Recive()
reset()
 end
 
 --io_.io.sleep(10)
 function reset()
 a=nil
 data = nil
 a = io_.read() 
 Send(a)
 end
reset()
 --if a ~= nil then 
 --Recive()
 --end
 --end
 end
 global()