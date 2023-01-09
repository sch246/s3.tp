data remove storage temp Location
data modify storage temp Location.Dimension set from entity @s SpawnDimension
data modify storage temp Location.x set from entity @s SpawnX
data modify storage temp Location.y set from entity @s SpawnY
data modify storage temp Location.z set from entity @s SpawnZ
data modify storage temp Location.Pos set value [0.0d,0.0d,0.0d]
execute store result storage temp Location.Pos[0] double 1 run data get storage temp Location.x
execute store result storage temp Location.Pos[1] double 1 run data get storage temp Location.y
execute store result storage temp Location.Pos[2] double 1 run data get storage temp Location.z
data modify storage temp Location.Name set value '{"text":"重生点","color":"green"}'
function s3:tp/read
execute at @s run tp @s ~0.5 ~0.5 ~0.5

execute at @s unless block ~ ~ ~ #beds unless block ~ ~ ~ respawn_anchor run function s3:tp/spawn/trigger/world