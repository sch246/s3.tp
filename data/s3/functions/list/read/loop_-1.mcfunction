execute if score index tmp matches -1 run data modify storage temp obj set from storage temp list[-1]
scoreboard players add index tmp 1
data remove storage temp list[-1]
execute if score index tmp matches ..-1 if data storage temp list[-1] run function s3:list/read/loop_-1