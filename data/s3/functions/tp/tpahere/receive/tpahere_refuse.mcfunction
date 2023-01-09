# 检测是否存在发送者
scoreboard players reset #uid tmp
scoreboard players operation #uid tmp = @s tpahere.send.uid
scoreboard players set #exist tmp 0
execute as @a if score @s uid = #uid tmp run scoreboard players set #exist tmp 1
## 不存在
execute if score #exist tmp matches 0 run function s3:tp/tpahere/receive/tellraw/query_fail/no_query
## 存在
execute if score #exist tmp matches 1 run function s3:tp/tpahere/receive/tellraw/done/refuse
scoreboard players operation #uid tmp = @s uid
scoreboard players operation # tmp = @s tpahere.send.uid
execute if score #exist tmp matches 1 as @a if score @s uid = # tmp run function s3:tp/tpahere/send/tellraw/done/refuse
execute if score #exist tmp matches 1 run function s3:tp/tpahere/receive/func/clear


# 我也不知道这个有什么用但是不放就会出大问题
scoreboard players reset #uid tmp