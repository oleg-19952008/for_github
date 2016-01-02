  robot = require("robot")
  LEBO = true
  bool = false
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
function  Main()
 tt= false
detect()
if pr == true then
use_LEFT()
else
move()
end
 
end
if tt == false then
Main();
end