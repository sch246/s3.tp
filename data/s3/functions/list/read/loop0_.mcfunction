execute if score index tmp matches 0 run data modify storage temp obj set from storage temp list[0]
scoreboard players remove index tmp 1
data remove storage temp list[0]
execute if score index tmp matches 0.. if data storage temp list[0] run function s3:list/read/loop0_