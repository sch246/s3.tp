#for_ i in range(0,256)
    #setfunc s3:person/1/f{4*<i>}
        #mc execute if score #uid tmp matches f{4*<i>} run function s3:person/0/f{4*<i>}
        #mc execute if score #uid tmp matches f{4*<i>+1} run function s3:person/0/f{4*<i>+1}
        #mc execute if score #uid tmp matches f{4*<i>+2} run function s3:person/0/f{4*<i>+2}
        #mc execute if score #uid tmp matches f{4*<i>+3} run function s3:person/0/f{4*<i>+3}
