scoreboard players operation #uid tmp = @s tpa.send.uid
function s3:person/read_scb
tellraw @s [{"text": "已接受","color": "green"},{"storage":"temp","nbt":"person.read.Name","color": "red"},{"text": "的tpa请求"}]