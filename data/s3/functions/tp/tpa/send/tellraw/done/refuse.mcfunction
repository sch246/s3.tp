# input #uid tmp(接收者的uid)
function s3:person/read_scb
tellraw @s [{"storage":"temp","nbt":"person.read.Name","color": "red"},{"text": "已拒绝你的tpa请求","color": "yellow"}]