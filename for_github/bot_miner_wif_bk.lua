  robot = require('robot')
  computer = require("computer")
  component = require("component")
   MoDeM = component.modem
  LEBO = true

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
 function RAM()
 computer = require("computer")
 free_mem = computer.freeMemory()
 total_mem = computer.totalMemory()
print ("Свободно ".. free_mem/1024 .." KB RAM из ".. total_mem/1024 .. " KB")
free_mem , total_mem = nil
return 
end
function left()
robot.turnLeft()
return
end
function right()
robot.turnRight()
return
end
function pover_180_gr()
robot.turnAround()
return
end
function go()
 robot.forward()
 no_move, sd = robot.forward()
return no_move , sd
end
function back()
 robot.back()
return
end
 function detect()
  robot.detect()
 pr, prip =   robot.detect()
 return
end
 function detect_Down()
 robot.detectDown()
 return
end
 function detect_UP()
 robot.detectUp()
 return
end
  function use_LEFT() -- robot.use([side: number[, sneaky: boolean[, duration: number]]]): boolean[, string]
 robot.use()
 return
 end
 function use_LEFT()
 local a  = robot.swing()
  return a
  end
function move()
print("Я топаю")
m = go()
Main()
return
end 
function rnd(min_,max_)
local int = math.random (min_ , max_)
return int
end
i = 1
xx = false
back___ = 1
X = 0
Y = 0
function go_start()
if X >= 3 or Y>=3 then
back()
end
return
end 
print("Готов вкалывать ! ")
function Main()
aa = 1 
RAM()
  name, _, sender, _, _, message = computer.pullSignal(2)
  if name == 'modem_message' then
  
 print (message)
 local msg = message
 if msg ~= nil then
if msg == "up" then
robot.up()
use_LEFT()
end 
if msg == "down" then
robot.down()
use_LEFT()
end
if msg == "left" then 
robot.turnLeft()
use_LEFT()
 end
 if msg == "pr" then 
robot.turnRight()
use_LEFT()
 end
 if msg == "help" then
  helpa = "pr, left, up, down, help"
 send(helpa)
 helpa = nil
 end
 if msg == "b" or msg == "back" then
 robot.turnAround() --специайльный краш системы для выхода в шелл
 use_LEFT()
 end
 ping()
 end
 if msg == "off" then
 robot.left() --специайльный краш системы для выхода в шелл
 
 end
  if msg == "r" then
 move() --специайльный краш системы для выхода в шелл
 use_LEFT()
 move()
 end
 ping()
 end

int_ =  rnd(1,3)
print (int_)
if X>=3 or Y>=3 then 
go_start()
print("Я потерялся иду на место старта")
else
  a,b = robot.detect()  
  if a == true then 
   print("Нашел блок, ломаю его !")
use_LEFT()
 X= aa+1
  Y= aa+1
  U,d = robot.detectUp()
  D,c = robot.detectDown()
  if U == true or D == true then  
  print("Нашел блок под собой/над собой")
  if U== true then    
else
  robot.up() 
  move() 
  end
if D == true then   
else
robot.down() 
 move()
  end
  U= nil
  D = nil
  end
  end
 
  if a == false then 
 if int_ == 1 then
 right()
  print("Пробую на право пойти")
 X= aa+1
 move()
 end
 if int_ == 2 then
 print("Пробую на лево пойти")
 Y= aa+1
 left()
 move()
  end
 if int_ == 3 then
print("Думаю на верх или в низ двинуться ")
niz_verh()
  end
-- print (i)
 end
 end
 
 
 --Main()  
 move()
 ping()
 return
 end


 
-- robot.detectUp(): boolean, string
-- Аналогично robot.detect(), только проверяет блок над роботом.
-- robot.detectDown(): boolean, string
-- Аналогично robot.detect(), только проверяет блок под роботом.
function niz_verh()
print("NIZ_VERH")
local niz , a= robot.detectDown()
local verh, b = robot.detectUp()
local UP_OR_NIZ = rnd(1,2)
if niz == false or verh == false then -- false значит нету блока под ботом
if UP_OR_NIZ == 1 then 
robot.down()
use_LEFT()
Main()
print("DOWN")
else
 use_LEFT()
robot.up()
Main()
print("UP")
end

return
end
end
function send(data)
if data ~= nil then
  print (data)
 MoDeM.broadcast(2525,data)
 data = nil
 end

 end  
function ping()
  data = "PING"
  print (data)
 MoDeM.broadcast(2525,data)
 --Main()
 data = nil
 end  
if LEBO == true or LEBO == false then
Main() 
 end