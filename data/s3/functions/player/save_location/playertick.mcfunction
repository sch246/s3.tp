data remove storage temp Location
data modify storage temp Location.Dimension set from entity @s Dimension
data modify storage temp Location.Pos set from entity @s Pos
data modify storage temp Location.Rotation set from entity @s Rotation
execute store result storage temp Location.x int 1 run data get entity @s Pos[0]
execute store result storage temp Location.y int 1 run data get entity @s Pos[1]
execute store result storage temp Location.z int 1 run data get entity @s Pos[2]


data modify storage temp player_person.player.Location_list append from storage temp Location
execute if data storage temp player_person.player.Location_list[2] run function s3:player/save_location/loop