# input #confirmed tmp

# 检测是否已确认过存在
scoreboard players operation #uid tmp = @s uid
# 未确认过存在
scoreboard players set #exist tmp 0
execute if score #confirmed tmp matches 0 as @a if score @s tpahere.send.uid = #uid tmp run function s3:tp/tpahere/receive/func/if_re_exist_my_query
    ## 玩家不存在
    execute if score #confirmed tmp matches 0 if score #exist tmp matches 0 run function s3:tp/tpahere/send/tellraw/menu/do_not_find
    ## 玩家存在
        ### 请求存在
        execute if score #confirmed tmp matches 0 if score #exist tmp matches 1 if score #exist_my_query tmp matches 1 run function s3:tp/tpahere/send/tellraw/menu/show 
        ### 请求不存在
        execute if score #confirmed tmp matches 0 if score #exist tmp matches 1 if score #exist_my_query tmp matches 0 run function s3:tp/tpahere/send/tellraw/menu/do_not_find
# 确认过存在
execute if score #confirmed tmp matches 1 run function s3:tp/tpahere/send/tellraw/menu/show 

