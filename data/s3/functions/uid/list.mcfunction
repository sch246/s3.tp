data modify storage temp uid.list set from storage sys person.list
data remove storage temp uid.list[0]
scoreboard players set #uid tmp 1
function s3:help/tellraw/n_line
execute if data storage temp uid.list[0] run function s3:uid/list_loop