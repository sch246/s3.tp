execute if score # tmp matches 0 run data modify storage sys person.list[495] merge from storage temp person.write
execute if score # tmp matches 1 run data modify storage temp person.read set from storage sys person.list[495]
