# input: scb time tmp
# output: scb tick,sec,min,hour,day tmp

scoreboard players operation tick tmp = time tmp
scoreboard players operation tick tmp %= #20 int
scoreboard players operation sec tmp = time tmp
scoreboard players operation sec tmp /= #20 int

scoreboard players operation min tmp = sec tmp
scoreboard players operation min tmp /= #60 int
scoreboard players operation sec tmp %= #60 int

scoreboard players operation hour tmp = min tmp
scoreboard players operation hour tmp /= #60 int
scoreboard players operation min tmp %= #60 int

scoreboard players operation day tmp = hour tmp
scoreboard players operation day tmp /= #24 int
scoreboard players operation hour tmp %= #24 int

# tellraw @a ["day:",{"score":{"name": "day","objective": "tmp"}},"hour:",{"score":{"name": "hour","objective": "tmp"}},"min:",{"score":{"name": "min","objective": "tmp"}},"sec:",{"score":{"name": "sec","objective": "tmp"}},"tick:",{"score":{"name": "tick","objective": "tmp"}}]