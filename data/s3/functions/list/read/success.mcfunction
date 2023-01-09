
scoreboard players set #if tmp 0
execute if score index tmp matches 0.. run scoreboard players set #if tmp 1

execute if score #if tmp matches 1 run function s3:list/read/loop0_
execute if score #if tmp matches 0 run function s3:list/read/loop_-1