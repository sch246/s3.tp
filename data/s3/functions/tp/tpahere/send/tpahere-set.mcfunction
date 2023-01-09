# 接收者是否存在
scoreboard players operation #uid tmp = @s tpahere
function s3:tp/tpahere/send/func/if_uid_exist
# tellraw @s {"score":{"name": "#exist","objective": "tmp"}}
## 不存在
execute if score #exist tmp matches 0 run function s3:tp/tpahere/send/tellraw/query_fail/not_exist
## 存在
    ### 检测接收者是否有其它请求
    execute if score #exist tmp matches 1 as @a if score @s uid = #uid tmp run function s3:tp/tpahere/receive/func/if_re_exist_query
    
    #### 有
    execute if score #exist tmp matches 1 if score #exist_query tmp matches 1 run function s3:tp/tpahere/send/tellraw/query_fail/exist_query
    #### 没有
    execute if score #exist tmp matches 1 if score #exist_query tmp matches 0 run function s3:tp/tpahere/send/tpahere-set/exe


