# 读取存储
data remove storage temp Location_list
data modify storage temp Location_list set from storage temp tp_person.back.death.list
# 显示预览, 如果不是编辑模式的话仅显示点击传送

## back列表====================
## [
##    1:未命名的传送点
##    xx前(多久以前)
## ]
## 回到上级================刷新显示

# --------------------------------------------------------
function s3:help/tellraw/n_line
tellraw @s [{"text": "            [","color": "gray"},{"text": "back.death列表","color": "green","hoverEvent": {"action": "show_text","value": "tips:\n由死亡触发"}},{"text": "]","color": "gray"}]
function s3:tp/back/list/show/death
tellraw @s ["",{"text": "[","color": "gray"},{"text": "全部删除","color": "red","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger back.death.del"}},"clickEvent": {"action": "run_command","value": "/trigger back.death.del"}},{"text": "]","color": "gray"}]
tellraw @s ["",{"text": "[","color": "gray"},{"text": "回到上级","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger back"}},"clickEvent": {"action": "run_command","value": "/trigger back"}},{"text": "]              [","color": "gray"},{"text": "刷新显示","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger back.death"}},"clickEvent": {"action": "run_command","value": "/trigger back.death"}},{"text": "]","color": "gray"}]
function s3:help/tellraw/line