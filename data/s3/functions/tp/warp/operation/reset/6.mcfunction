data modify storage sys warp.list[6].Dimension set from entity @s Dimension
data modify storage sys warp.list[6].Pos set from entity @s Pos
data modify storage sys warp.list[6].Rotation set from entity @s Rotation
execute store result storage sys warp.list[6].x int 1 run data get entity @s Pos[0]
execute store result storage sys warp.list[6].y int 1 run data get entity @s Pos[1]
execute store result storage sys warp.list[6].z int 1 run data get entity @s Pos[2]
function s3:tp/warp/refresh
