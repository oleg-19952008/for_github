require ("lib")
function out.RAM()
 free_mem = computer.freeMemory()
 total_mem = computer.totalMemory()
out.wr_l ("Свободно ".. free_mem/1024 .." KB RAM из ".. total_mem/1024)
return 
end