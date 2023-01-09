execute if score index tmp matches 0 run data remove storage temp list[0]
# 减一，同时移动一个
scoreboard players remove index tmp 1
data modify storage temp list0 append from storage temp list[0]
data remove storage temp list[0]
execute if score index tmp matches 0.. run function s3:list/del/loop0_