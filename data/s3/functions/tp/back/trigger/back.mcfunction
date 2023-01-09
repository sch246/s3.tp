# 读取存储
data remove storage temp Location_list
data modify storage temp Location_list set from storage temp tp_person.back.list
# 显示预览, 如果不是编辑模式的话仅显示点击传送

## back列表====================
## [
##    1:未命名的传送点
##    xx前(多久以前)
## ]
## [sys] [death] [login] [move]
## 回到上级================刷新显示

# --------------------------------------------------------
function s3:help/tellraw/n_line
tellraw @s [{"text": "            [","color": "gray"},{"text": "back列表","color": "green","hoverEvent": {"action": "show_text","value": "tips:\nback传送时也许会读取视角\nps:传送牌和back不会被认为是系统传送\npss:传送都支持负索引,用trigger back set -1可以读取最后一位"}},{"text": "]","color": "gray"}]
function s3:tp/back/list/show/run
tellraw @s ["",{"text": "[","color": "gray"},{"text": "全部删除","color": "red","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger back.del"}},"clickEvent": {"action": "run_command","value": "/trigger back.del"}},{"text": "]","color": "gray"}]
tellraw @s ["",{"text": "[","color": "gray"},{"text": "sys","color": "yellow","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger back.sys"}},"clickEvent": {"action": "run_command","value": "/trigger back.sys"}},{"text": "]  [","color": "gray"},{"text": "death","color": "red","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger back.death"}},"clickEvent": {"action": "run_command","value": "/trigger back.death"}},{"text": "]  [","color": "gray"},{"text": "login","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger back.login"}},"clickEvent": {"action": "run_command","value": "/trigger back.login"}},{"text": "]  [","color": "gray"},{"text": "move","color": "green","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger back.move"}},"clickEvent": {"action": "run_command","value": "/trigger back.move"}},{"text": "]","color": "gray"}]
tellraw @s ["",{"text": "[","color": "gray"},{"text": "回到上级","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger help.tp"}},"clickEvent": {"action": "run_command","value": "/trigger help.tp"}},{"text": "]              [","color": "gray"},{"text": "刷新显示","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger back"}},"clickEvent": {"action": "run_command","value": "/trigger back"}},{"text": "]","color": "gray"}]
function s3:help/tellraw/line