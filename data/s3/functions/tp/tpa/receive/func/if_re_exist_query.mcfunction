# output #exist_query tmp
function s3:tp/tpa/receive/func/refresh
scoreboard players set #exist_query tmp 0
execute if score @s tpa.send.uid matches 1..2147483647 run scoreboard players set #exist_query tmp 1