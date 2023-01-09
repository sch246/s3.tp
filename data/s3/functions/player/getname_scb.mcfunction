# output: storage temp player.Name

function s3:person/read_scb
execute if data storage temp person.read.Name run data modify storage temp player.Name set from storage temp person.read.Name
execute unless data storage temp person.read.Name run say [s3:player/getname_scb]未找到数据
