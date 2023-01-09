# 保存字符串和计分板
# say a
data modify entity @s ArmorItems[3].tag.Dimension set from entity @a[distance=0..,limit=1] Dimension
execute store result score @s uid run scoreboard players add dimension uid 1
tag @s remove tmp