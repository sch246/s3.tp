# particle end_rod ~ ~ ~ 0 0 0 0.1 20 force
# 获取#uid tmp 和#warp tmp
execute positioned ~ ~3000 ~ as @e[type=armor_stand,distance=..0.1,tag=warp.portal] run scoreboard players operation #warp tmp = @s warp


#取坐标
data modify storage temp list set from storage sys warp.list
scoreboard players operation index tmp = #warp tmp

function s3:list/read

execute if score success tmp matches 0 run function s3:tp/read/fail
execute if score success tmp matches 0 run function s3:tp/warp/operation/portal/use/fail
execute if score success tmp matches 1 run function s3:tp/warp/operation/portal/use/refresh
execute if score success tmp matches 1 run function s3:tp/warp/operation/portal/use/tp