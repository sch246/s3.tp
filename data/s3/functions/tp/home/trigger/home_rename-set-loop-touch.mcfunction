
data remove storage temp Text1
data remove storage temp Text2
data remove storage temp Text3
data remove storage temp Text4

data modify storage temp Text1 set from block ~ ~ ~ Text1
data modify storage temp Text2 set from block ~ ~ ~ Text2
data modify storage temp Text3 set from block ~ ~ ~ Text3
data modify storage temp Text4 set from block ~ ~ ~ Text4

execute if predicate s3:mainhand/black_dye run data modify block ~ ~ ~ Text1 set value '{"color":"black","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/blue_dye run data modify block ~ ~ ~ Text1 set value '{"color":"blue","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/brown_dye run data modify block ~ ~ ~ Text1 set value '{"color":"#8c5c34","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/cyan_dye run data modify block ~ ~ ~ Text1 set value '{"color":"dark_aqua","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/gray_dye run data modify block ~ ~ ~ Text1 set value '{"color":"dark_gray","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/green_dye run data modify block ~ ~ ~ Text1 set value '{"color":"dark_green","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/light_blue_dye run data modify block ~ ~ ~ Text1 set value '{"color":"aqua","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/light_gray_dye run data modify block ~ ~ ~ Text1 set value '{"color":"gray","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/lime_dye run data modify block ~ ~ ~ Text1 set value '{"color":"green","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/magenta_dye run data modify block ~ ~ ~ Text1 set value '{"color":"dark_red","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/orange_dye run data modify block ~ ~ ~ Text1 set value '{"color":"gold","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/pink_dye run data modify block ~ ~ ~ Text1 set value '{"color":"light_purple","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/purple_dye run data modify block ~ ~ ~ Text1 set value '{"color":"dark_purple","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/red_dye run data modify block ~ ~ ~ Text1 set value '{"color":"red","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/white_dye run data modify block ~ ~ ~ Text1 set value '{"color":"white","storage":"temp","nbt":"Text1","interpret":true}'
execute if predicate s3:mainhand/yellow_dye run data modify block ~ ~ ~ Text1 set value '{"color":"yellow","storage":"temp","nbt":"Text1","interpret":true}'


execute unless data storage temp {Text2:'{"text":""}'} run data modify block ~ ~ ~ Text2 set value '[{"storage":"temp","nbt":"Text2","interpret":true,"color":"gray","italic":false}]'

execute unless data storage temp {Text3:'{"text":""}'} run data modify block ~ ~ ~ Text2 set value '[{"storage":"temp","nbt":"Text2","interpret":true,"color":"gray","italic":false},"\\n",{"storage":"temp","nbt":"Text3","interpret":true,"color":"gray","italic":false}]'

execute unless data storage temp {Text4:'{"text":""}'} run data modify block ~ ~ ~ Text2 set value '[{"storage":"temp","nbt":"Text2","interpret":true,"color":"gray","italic":false},"\\n",{"storage":"temp","nbt":"Text3","interpret":true,"color":"gray","italic":false},"\\n",{"storage":"temp","nbt":"Text4","interpret":true,"color":"gray","italic":false}]'


execute if data storage temp {Text1:'{"text":""}'} run tellraw @s {"text": "牌子第一行为空","color": "red"}
execute unless data storage temp {Text1:'{"text":""}'} run data modify storage temp list0[-1].Name set from block ~ ~ ~ Text1

execute if data storage temp {Text2:'{"text":""}'} run tellraw @s {"text": "牌子第二行为空","color": "red"}
execute unless data storage temp {Text2:'{"text":""}'} run data modify storage temp list0[-1].hover set from block ~ ~ ~ Text2

data modify block ~ ~ ~ Text1 set from storage temp Text1
data modify block ~ ~ ~ Text2 set from storage temp Text2
data modify block ~ ~ ~ Text3 set from storage temp Text3
data modify block ~ ~ ~ Text4 set from storage temp Text4

