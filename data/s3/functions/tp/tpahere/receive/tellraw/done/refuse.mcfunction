scoreboard players operation #uid tmp = @s tpahere.send.uid
function s3:person/read_scb
tellraw @s [{"text": "已拒绝","color": "yellow"},{"storage":"temp","nbt":"person.read.Name","color": "red"},{"text": "的tpahere请求"}]