scoreboard players set #touch tmp 0
execute at @s anchored eyes positioned ^ ^ ^ run function s3:tp/home/trigger/home_rename-set-loop
execute if score #touch tmp matches 0 run tellraw @s {"text": "找不到牌子","color": "red"}

function s3:list/merge
data modify storage temp tp_person.home.list set from storage temp list
function s3:tp/home/refresh