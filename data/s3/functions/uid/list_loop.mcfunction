execute if data storage temp uid.list[0].Name run tellraw @s ["",{"score":{"name": "#uid","objective": "tmp"},"color":"aqua"},": ",{"storage":"temp","nbt":"uid.list[0].Name","color": "red"}]
execute if data storage temp uid.list[0].player unless data storage temp uid.list[0].Name run tellraw @s ["",{"score":{"name": "#uid","objective": "tmp"},"color":"aqua"},": ",{"text":"无名","color":"gray","italic": true}]

scoreboard players add #uid tmp 1
data remove storage temp uid.list[0]

execute if data storage temp uid.list[0] run function s3:uid/list_loop