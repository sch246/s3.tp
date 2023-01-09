function s3:person/read
data modify storage temp player_person set from storage temp person.read

function s3:player/save_location/playertick

execute if score @s leave_game matches 1.. run function #s3:player/join
scoreboard players set @s leave_game 0

# tag @s remove death
# execute if score @s death matches 1.. run tag @s add death

execute if score @s death matches 1.. run function #s3:player/death
scoreboard players set @s death 0

# execute positioned ~ ~ ~ run function s3:player/move/run

data modify storage temp person.write set from storage temp player_person
function s3:person/write