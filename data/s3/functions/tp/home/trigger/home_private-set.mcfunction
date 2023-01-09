# 删除 storage temp tp_person.home.list[(scb @s home.private)].public
scoreboard players operation index tmp = @s home.private
data modify storage temp list set from storage temp tp_person.home.list
function s3:list/split
execute if score success tmp matches 0 run function s3:tp/read/fail
execute if score success tmp matches 1 run function s3:tp/home/trigger/home_private-set-