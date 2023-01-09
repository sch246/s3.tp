execute if block ~ ~ ~ #signs align xyz positioned ~.5 ~.5 ~.5 run function s3:tp/home/trigger/home_rename-set-loop-touch
execute if block ~ ~ ~ #signs align xyz positioned ~.5 ~.5 ~.5 run scoreboard players set #touch tmp 1
execute if score #touch tmp matches 0 if entity @s[distance=..7] positioned ^ ^ ^0.2 run function s3:tp/home/trigger/home_rename-set-loop