# input #uid tmp(接收者的)
# 检测接收者是否存在
scoreboard players set #exist tmp 0
execute as @a if score @s uid = #uid tmp run scoreboard players set #exist tmp 1