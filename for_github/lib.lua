out= {}  
require("io")
  
function out.read() 
local rd = io.read() 
return rd
--print(read) 
end 
 function out.int(int_32)
 -- if int_32 == nil then
 -- i = #int_32
 -- i = 0
local i =1
 local i= int_32 *i 
 print (i)
 return i
 end
 

local value 
function out.wr_nl(value) 
if value == nil then 
value = "null" 
print(">> " .. value.."\n") 
else 
print(">> " .. value.."\n") 
end 
end 
out.wr_nl("") 

function out.wr_l(value) 
if value == nil then 
value = "null" 
print(">> " .. value) 
else 
print(">> " .. value) 
end 
end 
out.wr_l("")