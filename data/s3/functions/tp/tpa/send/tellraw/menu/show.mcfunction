scoreboard players operation #uid tmp = @s uid
# 获取剩余时间的字符串
execute as @a if score @s tpa.send.uid = #uid tmp run scoreboard players operation time tmp = @s tpa.time
execute store result score # tmp run time query gametime
scoreboard players operation time tmp -= # tmp
function s3:time/count
function s3:time/to_str
# 获取玩家名
execute as @a if score @s tpa.send.uid = #uid tmp run scoreboard players operation #uid tmp = @s uid
function s3:person/read_scb



tellraw @s ["",{"text": "[","color": "gray"},{"text": "剩余"},{"storage": "temp","nbt":"time.str","interpret": true},{"text": "]","color": "gray"},{"text": "你想传送到","color": "gold"},{"storage":"temp","nbt":"person.read.Name","color": "red"},{"text": "身边","color": "gold"}]
tellraw @s ["",{"text": "[","color": "gray"},{"text": "取消","color": "yellow","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger tpa.cancel"}},"clickEvent": {"action": "run_command","value": "/trigger tpa.cancel"}},{"text": "]        [","color": "gray"},{"text": "点击刷新","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger tpa.send"}},"clickEvent": {"action": "run_command","value": "/trigger tpa.send"}},{"text": "]","color": "gray"}]