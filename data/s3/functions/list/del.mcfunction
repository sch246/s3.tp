# input: storage temp list
#        scb index tmp
# output: storage temp list
#         scb success tmp
data remove storage temp list0
execute store result score len tmp run data get storage temp list
scoreboard players operation -len tmp = len tmp
scoreboard players operation -len tmp *= #-1 int
scoreboard players set success tmp 0
execute if score index tmp < len tmp if score index tmp >= -len tmp run scoreboard players set success tmp 1
execute if score success tmp matches 1 run function s3:list/del/success
