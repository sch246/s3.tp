#for_ i in range(0,4)
    #setfunc s3:person/4/f{256*<i>}
        #mc execute if score #uid tmp matches f{256*<i>}..f{256*<i>+63} run function s3:person/3/f{256*<i>}
        #mc execute if score #uid tmp matches f{256*<i>+64}..f{256*<i>+127} run function s3:person/3/f{256*<i>+64}
        #mc execute if score #uid tmp matches f{256*<i>+128}..f{256*<i>+191} run function s3:person/3/f{256*<i>+128}
        #mc execute if score #uid tmp matches f{256*<i>+192}..f{256*<i>+255} run function s3:person/3/f{256*<i>+192}
