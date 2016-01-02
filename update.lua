 event = require("event")
 filesystem = require("filesystem")
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
print("Updater libs from github")
filesystem.remove("/files.t")
local wget = loadfile("/bin/wget.lua")

     url = "https://raw.githubusercontent.com/oleg-19952008/for_github/master/for_github/files_list.t";
 wget(url,"/files.t")

-- end
function  del_all_lua()
local  line ;
 local variable; adr  = "/files.t"
for line in io.lines(adr) do
filesystem.remove("/"..line)
end
end
del_all_lua()
 function  get_update() 
  adr  = "/files.t"
 for line in io.lines(adr) do  
 
 print(line)
 adrs =" https://raw.githubusercontent.com/oleg-19952008/for_github/master/for_github/"
 line_ = line  
 line = adrs .. line
   wget( line ,"/"..line_)

 end
 end
 get_update()


