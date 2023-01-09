data modify storage temp list0[-1].public set value 1b
function s3:list/merge
data modify storage temp tp_person.home.list set from storage temp list
function s3:tp/home/refresh
tellraw @s {"text":"传送点已开放,任何人/trigger warp set 1000*<uid>+<home>都可以传送\n/trigger menu set <uid> /trigger menu.home set <home> 同上","color": "yellow"}