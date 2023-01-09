# 读取存储
data remove storage temp Location_list
data modify storage temp Location_list set from storage temp tp_person.home.list
# 显示预览, 如果不是编辑模式的话仅显示点击传送
## home列表====================
## [
##    1:未命名的传送点
##     | 查看数据 | 重命名 | 设置详情 | 重置坐标 | 删除
## ]
## 新建传送点
## 退出编辑
## 回到上级================刷新显示

## home列表====================
## [
##    1:未命名的传送点
##    我们对此处一无所知
## ]
## 编辑传送点
## 回到上级================刷新显示

# --------------------------------------------------------
function s3:help/tellraw/n_line
tellraw @s [{"text": "            [","color": "gray"},{"text": "home列表","color": "green","hoverEvent": {"action": "show_text","value": "tips:\nhome传送时不会读取视角"}},{"text": "]","color": "gray"}]
function s3:tp/home/list/show/if_edit
tellraw @s ["",{"text": "[","color": "gray"},{"text": "回到上级","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger help.tp"}},"clickEvent": {"action": "run_command","value": "/trigger help.tp"}},{"text": "]              [","color": "gray"},{"text": "刷新显示","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger home"}},"clickEvent": {"action": "run_command","value": "/trigger home"}},{"text": "]","color": "gray"}]
function s3:help/tellraw/line