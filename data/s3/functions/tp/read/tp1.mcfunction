data remove storage temp Dimension
data modify storage temp Dimension set from entity @s ArmorItems[3].tag.Dimension
execute store result score # tmp run data modify storage temp Dimension set from storage temp Location.Dimension
# 如果哪个marker符合条件则执行传送
execute if score # tmp matches 0 run function s3:tp/read/tp2