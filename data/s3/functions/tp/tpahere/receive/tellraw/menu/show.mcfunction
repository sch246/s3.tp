
# 获取剩余时间的字符串
scoreboard players operation time tmp = @s tpahere.time
execute store result score # tmp run time query gametime
scoreboard players operation time tmp -= # tmp
function s3:time/count
function s3:time/to_str
# 获取玩家名
scoreboard players operation #uid tmp = @s tpahere.send.uid
function s3:person/read_scb



tellraw @s ["",{"text": "[","color": "gray"},{"text": "剩余"},{"storage": "temp","nbt":"time.str","interpret": true},{"text": "]","color": "gray"},{"storage":"temp","nbt":"person.read.Name","color": "red"},{"text": "想让你传送到ta身边","color": "gold"}]
tellraw @s ["",{"text": "[","color": "gray"},{"text": "接受","color": "green","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger tpahere.accept"}},"clickEvent": {"action": "run_command","value": "/trigger tpahere.accept"}},{"text": "]   [","color": "gray"},{"text": "拒绝","color": "red","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger tpahere.refuse"}},"clickEvent": {"action": "run_command","value": "/trigger tpahere.refuse"}},{"text": "]   [","color": "gray"},{"text": "点击刷新","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger tpahere.receive"}},"clickEvent": {"action": "run_command","value": "/trigger tpahere.receive"}},{"text": "]","color": "gray"}]