# input: @s uid
# output:玩家nbt存储
#        → storage temp person.read
scoreboard players set # tmp 1
scoreboard players operation #uid tmp = @s uid
data remove storage temp person.read
function s3:person/5/0