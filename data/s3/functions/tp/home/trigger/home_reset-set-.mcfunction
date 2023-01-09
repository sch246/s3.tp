data modify storage temp list0[-1].Dimension set from entity @s Dimension
data modify storage temp list0[-1].Pos set from entity @s Pos
execute store result storage temp list0[-1].x int 1 run data get entity @s Pos[0]
execute store result storage temp list0[-1].y int 1 run data get entity @s Pos[1]
execute store result storage temp list0[-1].z int 1 run data get entity @s Pos[2]

function s3:list/merge
data modify storage temp tp_person.home.list set from storage temp list
function s3:tp/home/refresh