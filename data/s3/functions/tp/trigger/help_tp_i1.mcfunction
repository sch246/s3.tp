# 显示预览
## ========================
##      [help.tp列表]
## 
## [回到上级]     [刷新显示]
## ========================

# --------------------------------------------------------
function s3:help/tellraw/n_line
tellraw @s [{"text": "            [","color": "gray"},{"text": "help.tp列表","color": "green"},{"text": "]","color": "gray"}]
function s3:tp/warp/help
function s3:tp/home/help
function s3:tp/back/help
function s3:tp/tpa/help
function s3:tp/tpahere/help
function s3:tp/spawn/help
tellraw @s ["",{"text": "[","color": "gray"},{"text": "回到上级","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger help"}},"clickEvent": {"action": "run_command","value": "/trigger help"}},{"text": "]              [","color": "gray"},{"text": "刷新显示","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger help.tp"}},"clickEvent": {"action": "run_command","value": "/trigger help.tp"}},{"text": "]","color": "gray"}]
function s3:help/tellraw/line