  robot = require("robot")
  LEBO = true
  bool = false
  block = "Нашел блок перед собой";
  function RAM()
 computer = require("computer")
 free_mem = computer.freeMemory()
 total_mem = computer.totalMemory()
print ("Свободно ".. free_mem/1024 .." KB RAM из ".. total_mem/1024 .. " KB")
return 
end
 -- prip = false
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
 no_move, sd = robot.forward()
return no_move , sd
end
function back()
 robot.back()
return
end
 function detect()
  -- Возвращает true если что-то может препятствовать движению робота
 pr, prip =   robot.detect()
 return pr
end
 function detect_Down()
down, pp =  robot.detectDown()
 return
end
 function detect_UP()
up, oo = robot.detectUp()
 return
end
function  detect_left()
left()
d_left,kkl   =    detect()
right()
return d_left
end

function  detect_right()
right()
d_right , dda  = detect()
left()
return d_right
end

--  function use_LEFT() -- robot.use([side: number[, sneaky: boolean[, duration: number]]]): boolean[, string]
-- robot.use()
-- return
-- end
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
function  wr(s)
print(s)
s= nil;
end
  tt= false
function  Main()
RAM();

 tt= false
detect()
if pr == true then
wr("Нашел блок, ломаю его")
use_LEFT()
else
wr("Блок не найден, ищу рядом с собой блоки")
detect_left()
detect_right()
if d_left == true then 
left()
wr(block)
move()
end
if d_right == true then 
right()
wr(block.."_")
move()
end
if d_left ~= true and d_right~= true then
move()
end
--move() 
--if d_left== true then
--use_LEFT()
--end

end
end
while tt == false do
Main();
end



