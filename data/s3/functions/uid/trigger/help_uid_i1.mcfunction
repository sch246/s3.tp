# 显示预览
## ========================
##      [uid帮助]
##
## [回到上级]     [刷新显示]
## ========================

# --------------------------------------------------------
function s3:help/tellraw/n_line
tellraw @s [{"text": "            [","color": "gray"},{"text": "uid帮助","color": "green"},{"text": "]","color": "gray"}]
function s3:uid/trigger/uid_getname_i1
function s3:uid/trigger/uid_get_i1
tellraw @s [{"text": " | ","color": "gray","hoverEvent": {"action": "show_text","value": {"text": "/trigger uid.view\n无法检测到潜行的玩家"}},"clickEvent": {"action": "run_command","value": "/trigger uid.view"}},{"text": "查看附近玩家uid","underlined": true,"color": "gold"}]
tellraw @s [{"text": " | ","color": "gray","hoverEvent": {"action": "show_text","value": {"text": "/function s3:uid/list"}},"clickEvent": {"action": "run_command","value": "/function s3:uid/list"}},{"text": "查看uid列表","underlined": true,"color": "dark_aqua"}]
tellraw @s ["",{"text": "[","color": "gray"},{"text": "回到上级","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger help"}},"clickEvent": {"action": "run_command","value": "/trigger help"}},{"text": "]              [","color": "gray"},{"text": "刷新显示","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger help.uid"}},"clickEvent": {"action": "run_command","value": "/trigger help.uid"}},{"text": "]","color": "gray"}]
function s3:help/tellraw/line