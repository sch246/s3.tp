# 检测temp tp_person.player.Location_list[]内两项是否满足条件

data remove storage temp Location0
data modify storage temp Location0 set from storage temp tp_person.player.Location_list[0]
data remove storage temp Location1
data modify storage temp Location1 set from storage temp tp_person.player.Location_list[1]
#尝试求差,当维度变化或者距离超过16格时触发保存
data modify storage temp Dimension set from storage temp Location0.Dimension
execute store success score change_dimension tmp run data modify storage temp Dimension set from storage temp Location1.Dimension
execute if score change_dimension tmp matches 1 run function s3:tp/back/move/check3
execute if score change_dimension tmp matches 0 run function s3:tp/back/move/check2


