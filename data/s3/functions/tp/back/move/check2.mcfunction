
execute store result score dx tmp run data get storage temp Location1.x
execute store result score dx_ tmp run data get storage temp Location0.x
scoreboard players operation dx tmp -= dx_ tmp
scoreboard players operation dx tmp *= dx tmp
execute store result score dy tmp run data get storage temp Location1.y
execute store result score dy_ tmp run data get storage temp Location0.y
scoreboard players operation dy tmp -= dy_ tmp
scoreboard players operation dy tmp *= dy tmp
execute store result score dz tmp run data get storage temp Location1.z
execute store result score dz_ tmp run data get storage temp Location0.z
scoreboard players operation dz tmp -= dz_ tmp
scoreboard players operation dz tmp *= dz tmp

scoreboard players operation d^2 tmp = dx tmp
scoreboard players operation d^2 tmp += dy tmp
scoreboard players operation d^2 tmp += dz tmp

execute unless score d^2 tmp matches 0..256 run function s3:tp/back/move/check3