#for_ i in range(0,32)
    execute store result score time tmp run time query gametime
    #mc execute store result score set tmp run data get storage temp Location_list[<i>].time
    scoreboard players operation time tmp -= set tmp
    function s3:time/count
    function s3:time/to_str_without_color
    #mc execute if data storage temp Location_list[<i>] run tellraw @s [{"text": "","color": "gray"},{"text": "<i>:","color": "white"},{"storage":"temp","nbt":"Location_list[<i>].Name","interpret": true,"underlined": true,"hoverEvent": {"action": "show_text","value": [{"text": "","color": "dark_purple","italic": true},{"text": "/trigger back set <i>","color": "white","italic": false}]},"clickEvent": {"action": "run_command","value": "/trigger back set <i>"}}," | ",{"storage":"temp","nbt":"Location_list[<i>].Dimension"},": [",{"storage":"temp","nbt":"Location_list[<i>].x"},", ",{"storage":"temp","nbt":"Location_list[<i>].y"},", ",{"storage":"temp","nbt":"Location_list[<i>].z"},"]","\n",{"storage":"temp","nbt":"time.str","interpret":true,"color":"gray"},{"text":"前"}]
