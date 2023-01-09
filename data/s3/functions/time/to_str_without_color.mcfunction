# input: scb tick,sec,min,hour,day tmp
# output: storage temp time.str
data remove storage temp time.text
execute if score day tmp matches 1.. run data modify storage temp time.text.day set value '[{"score":{"name": "day","objective": "tmp"}},{"text": "天"}]'
execute if score hour tmp matches 1.. run data modify storage temp time.text.hour set value '[{"score":{"name": "hour","objective": "tmp"}},{"text": "时"}]'
execute if score min tmp matches 1.. run data modify storage temp time.text.min set value '[{"score":{"name": "min","objective": "tmp"}},{"text": "分"}]'
execute if score sec tmp matches 1.. run data modify storage temp time.text.sec set value '[{"score":{"name": "sec","objective": "tmp"}},{"text": "秒"}]'
execute if score tick tmp matches 1.. run data modify storage temp time.text.tick set value '[{"score":{"name": "tick","objective": "tmp"}},{"text": "刻"}]'
setblock 0 0 0 bedrock
setblock 0 0 0 oak_sign
data modify block 0 0 0 Text1 set value '[{"storage":"temp","nbt":"time.text.day","interpret": true},{"storage":"temp","nbt":"time.text.hour","interpret": true},{"storage":"temp","nbt":"time.text.min","interpret": true},{"storage":"temp","nbt":"time.text.sec","interpret": true},{"storage":"temp","nbt":"time.text.tick","interpret": true}]'
data modify storage temp time.str set from block 0 0 0 Text1