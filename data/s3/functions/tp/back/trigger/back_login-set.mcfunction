# 移动storage temp tp_person.back.list[(scb @s back)]
# 到 storage temp Location
scoreboard players operation index tmp = @s back.login
data modify storage temp list set from storage temp tp_person.back.login.list
function s3:list/read
execute if score success tmp matches 0 run function s3:tp/read/fail
execute if score success tmp matches 1 run data remove storage temp Location
execute if score success tmp matches 1 run data modify storage temp Location set from storage temp obj
execute if score success tmp matches 1 run function s3:tp/read
