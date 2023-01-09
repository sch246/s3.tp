scoreboard players operation #uid tmp = @s uid
summon area_effect_cloud ~ ~ ~ {Tags:["tmp","player.move"],Duration:2}
execute as @e[type=area_effect_cloud,tag=tmp,tag=player.move,distance=..0.01] run function s3:player/move/set