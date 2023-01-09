#for_ i in range(0,32)
    #mc execute if data storage sys warp.list[<i>] run tellraw @s [{"text": "","color": "gray"},{"text": "<i>:","color": "white"},{"storage":"sys","nbt":"warp.list[<i>].Name","interpret": true,"underlined": true,"hoverEvent": {"action": "show_text","value": [{"text": "","color": "dark_purple","italic": true},{"text": "/trigger warp set <i>\n","color": "white","italic": false},{"storage":"sys","nbt":"warp.list[<i>].Dimension"},": [",{"storage":"sys","nbt":"warp.list[<i>].x"},", ",{"storage":"sys","nbt":"warp.list[<i>].y"},", ",{"storage":"sys","nbt":"warp.list[<i>].z"},"]\n",{"storage":"sys","nbt":"warp.list[<i>].hover","interpret":true}]},"clickEvent": {"action": "run_command","value": "/trigger warp set <i>"}},"\n | ",{"text": "查看数据","color": "dark_aqua","underlined": true,"hoverEvent": {"action": "show_text","value": "suggest_command"},"clickEvent": {"action": "suggest_command","value": "/data get storage sys warp.list[<i>]"}}," | ",{"text": "重命名","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","value": "suggest_command"},"clickEvent": {"action": "suggest_command","value": "/data modify storage sys warp.list[<i>].Name set value '{\"text\":\"未命名的传送点\"}'"}}," | ",{"text": "设置详情","color": "gray","underlined": true,"hoverEvent": {"action": "show_text","value": "suggest_command"},"clickEvent": {"action": "suggest_command","value": "/data modify storage sys warp.list[<i>].hover set value '{\"text\":\"这里啥都没有\"}'"}}," | ",{"text": "设置传送牌","color": "#bc8c64","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/function s3:tp/warp/operation/portal/<i>\n使眼前的告示牌能点击传送,将覆盖内容"}},"clickEvent": {"action": "run_command","value": "/function s3:tp/warp/operation/portal/<i>"}}," | ",{"text": "重置坐标","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/function s3:tp/warp/operation/reset/<i>"}},"clickEvent": {"action": "run_command","value": "/function s3:tp/warp/operation/reset/<i>"}}," | ",{"text": "删除","color": "red","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/function s3:tp/warp/operation/del/<i>"}},"clickEvent": {"action": "run_command","value": "/function s3:tp/warp/operation/del/<i>"}}]

# 当已经有32个传送点的时候,阻止添加新传送点
execute unless data storage sys warp.list[31] run tellraw @s {"text": "新建传送点","color": "green","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/function s3:tp/warp/operation/new"}},"clickEvent": {"action": "run_command","value": "/function s3:tp/warp/operation/new"}}
tellraw @s {"text": "退出编辑","color": "red","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/function s3:tp/warp/operation/edit_off"}},"clickEvent": {"action": "run_command","value": "/function s3:tp/warp/operation/edit_off"}}
