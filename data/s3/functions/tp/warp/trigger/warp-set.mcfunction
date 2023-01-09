# 移动storage sys warp.list[(scb @s warp)]
# 到 storage temp Location
scoreboard players operation index tmp = @s warp
data modify storage temp list set from storage sys warp.list
function s3:list/read
execute if score success tmp matches 0 run function s3:tp/read/fail
execute if score success tmp matches 1 run data remove storage temp Location
execute if score success tmp matches 1 run data modify storage temp Location set from storage temp obj
execute if score success tmp matches 1 run function s3:tp/read
