data modify storage sys warp.list[11].Dimension set from entity @s Dimension
data modify storage sys warp.list[11].Pos set from entity @s Pos
data modify storage sys warp.list[11].Rotation set from entity @s Rotation
execute store result storage sys warp.list[11].x int 1 run data get entity @s Pos[0]
execute store result storage sys warp.list[11].y int 1 run data get entity @s Pos[1]
execute store result storage sys warp.list[11].z int 1 run data get entity @s Pos[2]
function s3:tp/warp/refresh
