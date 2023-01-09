# input: @s uid
# output:storage temp person.write 
#        → 玩家nbt存储
scoreboard players set # tmp 0
scoreboard players operation #uid tmp = @s uid
function s3:person/5/0