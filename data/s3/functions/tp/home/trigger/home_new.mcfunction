execute store result score # tmp run data get storage temp tp_person.home.list
scoreboard players set #if tmp 0
execute if score # tmp < @s home_limit if score # tmp < #32 int run scoreboard players set #if tmp 1
execute if score # tmp < @s home_limit if score # tmp < #32 int run function s3:tp/home/trigger/home_new-
execute if score #if tmp matches 0 run tellraw @s {"text":"家数量已到达上限!","color":"red"}