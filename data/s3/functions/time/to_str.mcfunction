# input: scb tick,sec,min,hour,day tmp
# output: storage temp time.str
data remove storage temp time.text
execute if score day tmp matches 1.. run data modify storage temp time.text.day set value '[{"score":{"name": "day","objective": "tmp"},"color": "red"},{"text": "天","color": "gray"}]'
execute if score hour tmp matches 1.. run data modify storage temp time.text.hour set value '[{"score":{"name": "hour","objective": "tmp"},"color": "yellow"},{"text": "时","color": "gray"}]'
execute if score min tmp matches 1.. run data modify storage temp time.text.min set value '[{"score":{"name": "min","objective": "tmp"},"color": "green"},{"text": "分","color": "gray"}]'
execute if score sec tmp matches 1.. run data modify storage temp time.text.sec set value '[{"score":{"name": "sec","objective": "tmp"},"color": "aqua"},{"text": "秒","color": "gray"}]'
execute if score tick tmp matches 1.. run data modify storage temp time.text.tick set value '[{"score":{"name": "tick","objective": "tmp"},"color": "gray"},{"text": "刻","color": "gray"}]'
setblock 0 0 0 bedrock
setblock 0 0 0 oak_sign
data modify block 0 0 0 Text1 set value '[{"storage":"temp","nbt":"time.text.day","interpret": true},{"storage":"temp","nbt":"time.text.hour","interpret": true},{"storage":"temp","nbt":"time.text.min","interpret": true},{"storage":"temp","nbt":"time.text.sec","interpret": true},{"storage":"temp","nbt":"time.text.tick","interpret": true}]'
data modify storage temp time.str set from block 0 0 0 Text1