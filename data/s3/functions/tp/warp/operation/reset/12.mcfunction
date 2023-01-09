data modify storage sys warp.list[12].Dimension set from entity @s Dimension
data modify storage sys warp.list[12].Pos set from entity @s Pos
data modify storage sys warp.list[12].Rotation set from entity @s Rotation
execute store result storage sys warp.list[12].x int 1 run data get entity @s Pos[0]
execute store result storage sys warp.list[12].y int 1 run data get entity @s Pos[1]
execute store result storage sys warp.list[12].z int 1 run data get entity @s Pos[2]
function s3:tp/warp/refresh
