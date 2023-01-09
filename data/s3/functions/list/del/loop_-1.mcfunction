execute if score index tmp matches ..-1 run data remove storage temp list[-1]
# 减一，同时移动一个
scoreboard players add index tmp 1
data modify storage temp list0 prepend from storage temp list[-1]
data remove storage temp list[-1]
execute if score index tmp matches ..-1 run function s3:list/del/loop_-1