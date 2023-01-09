# say aaa

forceload add 0 0
setblock 0 0 0 bedrock
setblock 0 0 0 barrel
loot replace block 0 0 0 container.0 1 loot s3:head
data modify storage temp player.Name set from block 0 0 0 Items[0].tag.SkullOwner.Name
data remove storage temp person.write
data modify storage temp person.write.Name set from storage temp player.Name
function s3:person/write