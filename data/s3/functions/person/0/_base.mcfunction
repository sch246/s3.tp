#for_ i in range(0,1024)
    #setfunc s3:person/0/<i>
        #mc execute if score # tmp matches 0 run data modify storage sys person.list[<i>] merge from storage temp person.write
        #mc execute if score # tmp matches 1 run data modify storage temp person.read set from storage sys person.list[<i>]