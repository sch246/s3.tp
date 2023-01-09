# 显示预览
## ========================
##        [help列表]
## 
##               [刷新显示]
## ========================

# --------------------------------------------------------
function s3:help/tellraw/n_line
tellraw @s [{"text": "            [","color": "gray"},{"text": "help列表","color": "green"},{"text": "]","color": "gray"}]
function #help
tellraw @s ["",{"text": "                         [","color": "gray"},{"text": "刷新显示","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger help"}},"clickEvent": {"action": "run_command","value": "/trigger help"}},{"text": "]","color": "gray"}]
function s3:help/tellraw/line