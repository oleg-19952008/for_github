global = require("pkg")
local GPU = component.gpu
GPU.setBackground (0x00369c)

--������ � ���� ���  LEFT � � ����� RIGHT 
-- fill ��� ��������� ������������ ������������ �������� gpu.fill(left,right, 4 <- ���������� ������� �� X ,5 ������ ��  Y � �� ����������
function out.draw_line(LEFT,RIGHT,X,Y,SYMBOL)
-- local LEFT = 1
-- local RIGHT = 2
local W, H = GPU.getResolution()
GPU.fill(LEFT,RIGHT,X,Y,SYMBOL)
return
end
--out.draw_line(2,5,1,8,"|") ������ ��������� �����
