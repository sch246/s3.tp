# input #uid tmp(发送者的)
# output #exist_my_query tmp
function s3:tp/tpahere/receive/func/refresh
scoreboard players set #exist_my_query tmp 0
execute if score @s tpahere.send.uid = #uid tmp run scoreboard players set #exist_my_query tmp 1
scoreboard players set #exist tmp 1