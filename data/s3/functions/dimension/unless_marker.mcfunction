# 若没有检测到marker,广播信息,创建marker
tellraw @a ["",{"selector": "@s","color": "green"},{"text": "发现了新的维度","italic": true,"color": "gray"},{"entity": "@s","nbt": "Dimension","color": "aqua"}]
summon armor_stand 0 3000 0 {Tags:["dimension_marker","tmp"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:paper",tag:{}}],Marker:1b}
