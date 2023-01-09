# input: #uid tmp
# output:玩家nbt存储
#        → storage temp person.read
scoreboard players set # tmp 1
data remove storage temp person.read
function s3:person/5/0