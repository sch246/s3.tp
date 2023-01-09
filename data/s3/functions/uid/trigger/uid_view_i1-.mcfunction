function s3:player/getname
tellraw @a[tag=uid.view,sort=nearest,limit=1] ["",{"storage":"temp","nbt":"player.Name","color":"red"},": ",{"score":{"name":"@s","objective": "uid"},"color": "aqua"}]
