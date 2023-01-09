# input #confirmed tmp
# 检测是否已确认过存在
## 未确认过存在,检测满足条件的玩家是否存在
execute if score #confirmed tmp matches 0 run function s3:tp/tpa/receive/func/refresh
scoreboard players reset #uid tmp
scoreboard players operation #uid tmp = @s tpa.send.uid
scoreboard players set #exist tmp 0
execute if score #confirmed tmp matches 0 as @a if score @s uid = #uid tmp run scoreboard players set #exist tmp 1
    ## 玩家不存在
    execute if score #confirmed tmp matches 0 if score #exist tmp matches 0 run function s3:tp/tpa/receive/tellraw/menu/do_not_find
    ## 玩家存在
    execute if score #confirmed tmp matches 0 if score #exist tmp matches 1 run function s3:tp/tpa/receive/tellraw/menu/show 
## 确认过存在
execute if score #confirmed tmp matches 1 run function s3:tp/tpa/receive/tellraw/menu/show 


