#for_ i in range(0,64)
    #setfunc s3:person/2/f{16*<i>}
        #mc execute if score #uid tmp matches f{16*<i>}..f{16*<i>+3} run function s3:person/1/f{16*<i>}
        #mc execute if score #uid tmp matches f{16*<i>+4}..f{16*<i>+7} run function s3:person/1/f{16*<i>+4}
        #mc execute if score #uid tmp matches f{16*<i>+8}..f{16*<i>+11} run function s3:person/1/f{16*<i>+8}
        #mc execute if score #uid tmp matches f{16*<i>+12}..f{16*<i>+15} run function s3:person/1/f{16*<i>+12}
