scoreboard players operation #uid tmp = @s warp
scoreboard players operation #uid tmp /= #1000 int
scoreboard players operation #home tmp = @s warp
scoreboard players operation #home tmp %= #1000 int
function s3:person/read_scb

scoreboard players operation index tmp = #home tmp
data modify storage temp list set from storage temp person.read.home.list
function s3:list/read
execute if score success tmp matches 0 run function s3:tp/read/fail
execute if score success tmp matches 1 store success score # tmp if data storage temp obj{public:1b}
execute if score success tmp matches 1 if score # tmp matches 0 run function s3:tp/read/private
execute if score success tmp matches 1 if score # tmp matches 1 run data remove storage temp Location
execute if score success tmp matches 1 if score # tmp matches 1 run data modify storage temp Location set from storage temp obj
execute if score success tmp matches 1 if score # tmp matches 1 run function s3:tp/read
