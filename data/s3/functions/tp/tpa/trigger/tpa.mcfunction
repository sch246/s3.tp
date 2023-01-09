# 显示预览
## ========================
##        [tpa状态]
##           >使用/trigger tpa set uid发送请求
## <[剩余30秒]xx想要传送到你这里>
## [接受]  [拒绝]
## #tpa.accept  #tpa.refuse
## <[剩余30秒]你想要传送到xx那里>
##  [取消]
##   #tpa.cancel
## [回到上级]     [刷新显示]
## ========================
#--------------------------------------------------------
function s3:help/tellraw/n_line
tellraw @s [{"text": "            [","color": "gray"},{"text": "tpa状态","color": "green","hoverEvent": {"action": "show_text","value": "tips:\n使用/trigger tpa set <uid>发送传送请求"}},{"text": "]","color": "gray"}]
function s3:tp/tpa/receive/tpa_receive
function s3:tp/tpa/send/tpa_send

tellraw @s ["",{"text": "[","color": "gray"},{"text": "回到上级","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger help.tp"}},"clickEvent": {"action": "run_command","value": "/trigger help.tp"}},{"text": "]              [","color": "gray"},{"text": "刷新显示","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger tpa"}},"clickEvent": {"action": "run_command","value": "/trigger tpa"}},{"text": "]","color": "gray"}]
function s3:help/tellraw/line