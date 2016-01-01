 local ot = require("lib")
 ot = out
 ot.wr_l("Load more libs ?")
 
 local result = ot.read()
 if result =="y" then
 result = nil
 more_libs = require("core_lib")
 ot.wr_l("Libs loaded !")
 end
 ot.wr_l("Get free RAM ?")
 local result = ot.read()
 if result == "y" then  
 local ot =  require("mem")
 out.RAM()
 
 result = nil
 end
 function gc (obj_for_clear)
 if obj_for_clear == nil then 
 print("Not clear obj ! ")
 end
 obj_for_clear = nil
 return obj_for_clear
 end
  -- local ot = require("/lib.lua")
-- local result = ot.read()
-- ot.wr_l("Load os ?")
-- if result == "y" then
-- result = nil