# 在眼前的木牌建立到 storage temp tp_person.home.list[(scb @s home.portal)] 的传送
scoreboard players operation index tmp = @s home.portal
data modify storage temp list set from storage temp tp_person.home.list
function s3:list/split
execute if score success tmp matches 0 run function s3:tp/read/fail
scoreboard players set #touch tmp 0
execute if score success tmp matches 1 at @s anchored eyes positioned ^ ^ ^ run function s3:tp/home/portal/set/loop_sign