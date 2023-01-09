# 如果没有视角则不改变视角,如果没有坐标,则会传送到marker(0, 3000, 0)
data modify entity @s Pos set from storage temp Location.Pos
data modify entity @s Rotation set from entity @a[tag=tp.tmp,limit=1] Rotation
data modify entity @s Rotation set from storage temp Location.Rotation
tp @a[tag=tp.tmp] @s
tp @s 0 3000 0
# say 啊