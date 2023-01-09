scoreboard players set #touch tmp 0
execute if block ~ ~ ~ #signs align xyz positioned ~.5 ~.5 ~.5 run function s3:tp/warp/operation/portal/set/if
execute if score #touch tmp matches 0 if entity @s[distance=..7] positioned ^ ^ ^0.2 run function s3:tp/warp/operation/portal/set/loop_sign