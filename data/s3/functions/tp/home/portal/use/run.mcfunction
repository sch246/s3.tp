# particle end_rod ~ ~ ~ 0 0 0 0.1 20 force
# 获取#uid tmp 和#home tmp
execute positioned ~ ~3000 ~ as @e[type=armor_stand,distance=..0.1,tag=home.portal] run function s3:tp/home/portal/use/get

#已获取#uid tmp
function s3:person/read_scb

#取坐标
data modify storage temp list set from storage temp person.read.home.list
scoreboard players operation index tmp = #home tmp

function s3:list/read

execute if score success tmp matches 0 run function s3:tp/read/fail
execute if score success tmp matches 0 run function s3:tp/home/portal/use/fail
execute if score success tmp matches 1 run function s3:tp/home/portal/use/refresh
execute if score success tmp matches 1 run function s3:tp/home/portal/use/tp