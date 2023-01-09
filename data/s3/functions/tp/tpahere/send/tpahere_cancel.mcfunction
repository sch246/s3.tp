# 检测接收者是否存在自身的请求
scoreboard players operation #uid tmp = @s uid
scoreboard players set #exist tmp 0
execute as @a if score @s tpahere.send.uid = #uid tmp run function s3:tp/tpahere/receive/func/if_re_exist_my_query
# 接收者不存在
execute if score #exist tmp matches 0 run function s3:tp/tpahere/send/tellraw/query_fail/not_exist_my_query
## 不存在
execute if score #exist tmp matches 1 if score #exist_my_query tmp matches 0 run function s3:tp/tpahere/send/tellraw/query_fail/not_exist_my_query
## 存在
    ### 清除
    scoreboard players operation #uid tmp = @s uid
    execute if score #exist tmp matches 1 if score #exist_my_query tmp matches 1 as @a if score @s tpahere.send.uid = #uid tmp run function s3:tp/tpahere/receive/func/clear
    ### 返回tellraw
    execute if score #exist tmp matches 1 if score #exist_my_query tmp matches 1 run function s3:tp/tpahere/send/tellraw/done/cancel
