# 减一，同时移动一个
scoreboard players add index tmp 1
data modify storage temp list1 prepend from storage temp list0[-1]
data remove storage temp list0[0]
execute if score index tmp matches ..0 run function s3:list/split/loop_-1