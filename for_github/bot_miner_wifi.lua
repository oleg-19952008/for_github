                    -- Движение робота
-- robot.forward(): boolean[, string]
-- Робот делает попытку двигаться вперед на один блок. Возвращает true в случае успеха. Иначе — nil и возможную причину — в противном случае. Причина — одна из строк функции robot.detect().
-- robot.back(): boolean[, string]
-- Аналогично robot.forward(), но двигает робота на один блок назад.
-- robot.up(): boolean[, string]
-- Аналогично robot.forward(), но двигает робота на один блок вверх.
-- robot.down(): boolean[, string]
-- Аналогично robot.forward(), но двигает робота на один блок вниз.
-- robot.turnLeft()
-- Поворачивает робота на 90° влево.
-- robot.turnRight()
-- Поворачивает робота на 90° вправо.
-- robot.turnAround()
-- Поворачивает робота на 180°

                        -- Работа с блоками 

-- robot.detect(): boolean, string
-- Проверяет, есть ли что-нибудь перед роботом. Возвращает true если что-то может препятствовать движению робота, false в противном случае. Второе возвращаемое значение определяет что именно находится перед роботом. Это может быть entity, solid, replaceable, liquid или air. Первые два могут блокировать робота, остальные — нет. В случае entity это может быть как животным или мобом, так и игроком или вагонеткой.
-- Примечание: для того чтобы получить более подробную информацию (ID, метаданные) о блоке, вы можете использовать функцию analyze() геосканера.
-- robot.detectUp(): boolean, string
-- Аналогично robot.detect(), только проверяет блок над роботом.
-- robot.detectDown(): boolean, string
-- Аналогично robot.detect(), только проверяет блок под роботом.

-- robot.swing([side: number]): boolean[, string]
-- Производит "левый щелчок мыши" роботом, используя при этом экипированный инструмент. Результат зависит от инструмента и того, какой блок располагается перед роботом. Возвращает true и дескриптор, если был обработан какой-то блок, либо false и возможную причину в случае неудачи.
-- Параметр side определяет сторону подвергаемую обработке. Если параметр опущен, робот перебирает все возможные стороны. Это позволяет контролировать направление "щечка мыши" если необходимо.
-- Возвращаемая строка может быть одной из следующих:
-- entity — если робот атаковал живое существо
-- block — если робот сломал блок
-- fire — если робот потушил огонь
-- air — если перед роботом ничего не было
-- robot.swingUp([side: number]): boolean[, string]
-- Аналогично robot.swing(), но работает с блоком над роботом.
-- robot.swingDown([side: number]): boolean[, string]
-- Аналогично robot.swing(), но работает с блоком под роботом.

-- robot.use([side: number[, sneaky: boolean[, duration: number]]]): boolean[, string]
-- Делает "правый щелчок мыши" роботом, используя экипированный инструмент. Результат зависит от инструмента и блока перед роботом. Возвращает true в случае успеха, либо false в случае неудачи.
-- Параметр side определяет сторону, куда направлено действие. Если параметр опущен, робот попробует воздействовать на все стороны. Это позволяет точнее контролировать действие, если необходимо. К примеру — сторону в которую полетит стрела, если использовать лук.
-- Параметр sneaky определяет "присел" ли робот (для игрока — клавиша ⇧ Shift), совершая действие. Это необходимо, к примеру, если робот пытается разместить блок на устройстве, которое по "правому щелчку" открывает свой интерфейс.
-- Параметр duration определяет продолжительность использования инструмента в секундах. К примеру, продолжительность натягивания лука. Учтите, что этот параметр вызывает соответствующую паузу в выполнении программы робота.
-- Возвращаемое значение может быть:
-- block_activated — если блок перед роботом был активирован (например — рычаг)
-- item_placed — если выбранный предмет был использован перед роботом (например — поставлен блок, или использована костная мука на растении)
-- item_interacted — если экипированный инструмент был использован на существе (например — ножницы на овце)
-- item_used — если экипированный инструмент был использован непосредственно (например — робот выстрелил из лука)
-- air — если ничего нельзя использовать в выбранном направлении, или экипированный инструмент нельзя использовать сам по себе
-- robot.useUp([side: number[, sneaky: boolean[, duration: number]]]): boolean[, string]
-- Аналогично robot.use(), но работает с блоком над роботом.
-- robot.useDown([side: number[, sneaky: boolean[, duration: number]]]): boolean[, string]
-- Аналогично robot.use(), но работает с блоком под роботом.
  robot = require('robot')
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
function Main()
aa = 1
 
 --up= true
  print("Готов вкалывать ! ")
RAM()
int_ =  rnd(1,3)
print (int_)
-- if int_ == 1 then 
-- LEBO = true
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
 print (i)
 end
 end
 
 
 Main()  
 move()
 
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
end
return
end

 
if LEBO == true or LEBO == false then
Main() 
 end