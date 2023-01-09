# 刷新
function s3:tp/tpahere/operation/refresh_time

execute store result score tpahere.wait tmp if score @s tpahere.send.uid matches 1..

execute if score tpahere.wait tmp matches 0 run function s3:tp/tpahere/operation/set

# 给对方发送消息
execute if score tpahere.wait tmp matches 0 run function s3:tp/tpahere/trigger/tpahere_receive_i1

scoreboard players set find tmp 1