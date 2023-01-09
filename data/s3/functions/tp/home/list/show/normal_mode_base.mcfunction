#for_ i in range(0,32)
    #mc execute if data storage temp Location_list[<i>] run tellraw @s [{"text": "","color": "gray"},{"text": "<i>:","color": "white"},{"storage":"temp","nbt":"Location_list[<i>].Name","interpret": true,"underlined": true,"hoverEvent": {"action": "show_text","value": [{"text": "","color": "dark_purple","italic": true},{"text": "/trigger home set <i>\n","color": "white","italic": false},{"storage":"temp","nbt":"Location_list[<i>].Dimension"},": [",{"storage":"temp","nbt":"Location_list[<i>].x"},", ",{"storage":"temp","nbt":"Location_list[<i>].y"},", ",{"storage":"temp","nbt":"Location_list[<i>].z"},"]"]},"clickEvent": {"action": "run_command","value": "/trigger home set <i>"}},"\n",{"storage":"temp","nbt":"Location_list[<i>].hover","interpret":true}]

# 当已经达到传送点上限的时候,阻止添加新传送点
execute store result score # tmp run data get storage temp Location_list
scoreboard players operation #left tmp = @s home_limit
scoreboard players operation #left tmp -= # tmp
execute if score # tmp < @s home_limit if score # tmp < #32 int run tellraw @s [{"text": "新建传送点","color": "green","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger home.new"}},"clickEvent": {"action": "run_command","value": "/trigger home.new"}},": ",{"score":{"name": "#left","objective": "tmp"}}]
tellraw @s ["",{"text": "编辑传送点","color": "dark_aqua","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "/trigger home.edit_on"}},"clickEvent": {"action": "run_command","value": "/trigger home.edit_on"}}]