# 删除storage temp tp_person.home.list[(scb @s home.del)]
scoreboard players operation index tmp = @s home.del
data modify storage temp list set from storage temp tp_person.home.list
function s3:list/del
execute if score success tmp matches 0 run function s3:tp/read/fail
execute if score success tmp matches 1 run data modify storage temp tp_person.home.list set from storage temp list
execute if score success tmp matches 1 run function s3:tp/home/refresh