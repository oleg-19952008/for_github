global = require("pkg")
local GPU = component.gpu
GPU.setBackground (0x00369c)

--отступ с лева это  LEFT а с права RIGHT 
-- fill это заполнить пространство определенным символом gpu.fill(left,right, 4 <- количество столбов по X ,5 строки по  Y и их количество
function out.draw_line(LEFT,RIGHT,X,Y,SYMBOL)
-- local LEFT = 1
-- local RIGHT = 2
local W, H = GPU.getResolution()
GPU.fill(LEFT,RIGHT,X,Y,SYMBOL)
return
end
--out.draw_line(2,5,1,8,"|") пример рисования линий
