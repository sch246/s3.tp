summon armor_stand ~ ~ ~ {Tags:["home.portal","tmp"],Marker:1b}
execute positioned ~ ~ ~ as @e[type=armor_stand,distance=..0.1,tag=tmp,limit=1] run function s3:tp/home/portal/set/set_marker