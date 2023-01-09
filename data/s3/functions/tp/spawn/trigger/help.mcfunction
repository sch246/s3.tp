# 显示预览
## ========================
##        [spawn帮助]
## 使用/trigger spawn 返回重生点
## ========================
#--------------------------------------------------------
function s3:help/tellraw/n_line
tellraw @s [{"text": "            [","color": "gray"},{"text": "spawn帮助","color": "green"},{"text": "]","color": "gray"}]
tellraw @s [{"text": "使用/trigger spawn 去重生点附近","color": "gray"}]
tellraw @s ["",{"text": "[","color": "gray"},{"text": "回到上级","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger help.tp"}},"clickEvent": {"action": "run_command","value": "/trigger help.tp"}},{"text": "]              [","color": "gray"},{"text": "刷新显示","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger help.tp.spawn"}},"clickEvent": {"action": "run_command","value": "/trigger help.tp.spawn"}},{"text": "]","color": "gray"}]
function s3:help/tellraw/line