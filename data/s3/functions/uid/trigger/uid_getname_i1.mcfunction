# 显示预览
function s3:person/read

tellraw @s [{"text": "你的名字是: ","color": "gray","italic": true,"hoverEvent": {"action": "show_text","value": "可使用/trigger uid.getname查看"}},{"storage":"temp","nbt":"person.read.Name","color":"red","italic": false}]
