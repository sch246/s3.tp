# input #uid tmp(发送者的)

scoreboard players set #exist tmp 0
execute as @a if score @s tpa.send.uid = #uid tmp run scoreboard players set #exist tmp 1