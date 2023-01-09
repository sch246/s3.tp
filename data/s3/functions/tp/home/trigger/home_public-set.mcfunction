# storage temp tp_person.home.list[(scb @s home.public)].public 设为1b
scoreboard players operation index tmp = @s home.public
data modify storage temp list set from storage temp tp_person.home.list
function s3:list/split
execute if score success tmp matches 0 run function s3:tp/read/fail
execute if score success tmp matches 1 run function s3:tp/home/trigger/home_public-set-