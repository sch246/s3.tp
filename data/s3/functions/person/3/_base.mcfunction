#for_ i in range(0,16)
    #setfunc s3:person/3/f{64*<i>}
        #mc execute if score #uid tmp matches f{64*<i>}..f{64*<i>+15} run function s3:person/2/f{64*<i>}
        #mc execute if score #uid tmp matches f{64*<i>+16}..f{64*<i>+31} run function s3:person/2/f{64*<i>+16}
        #mc execute if score #uid tmp matches f{64*<i>+32}..f{64*<i>+47} run function s3:person/2/f{64*<i>+32}
        #mc execute if score #uid tmp matches f{64*<i>+48}..f{64*<i>+63} run function s3:person/2/f{64*<i>+48}
