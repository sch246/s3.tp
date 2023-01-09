# 刷新
function s3:tp/tpa/operation/refresh_time

execute store result score tpa.wait tmp if score @s tpa.send.uid matches 1..

execute if score tpa.wait tmp matches 0 run function s3:tp/tpa/operation/set

# 给对方发送消息
execute if score tpa.wait tmp matches 0 run function s3:tp/tpa/trigger/tpa_receive_i1

scoreboard players set find tmp 1