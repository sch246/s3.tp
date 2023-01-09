
# 读取存储
function s3:person/read
data remove storage temp tp_person
data modify storage temp tp_person set from storage temp person.read

execute if score @s spawn matches 1 run function s3:tp/spawn/trigger/spawn
scoreboard players set @s spawn 0
scoreboard players enable @s spawn

execute if score @s help.tp.spawn matches 1 run function s3:tp/spawn/trigger/help
scoreboard players set @s help.tp.spawn 0
scoreboard players enable @s help.tp.spawn


# 写入存储
data remove storage temp person.write
data modify storage temp person.write set from storage temp tp_person
function s3:person/write