# -*- coding: UTF-8 -*-
import s3_mcpack as s3
import os

packpath = ''
mcfpath = r'ftoolsV0.0.0\data\s3\functions\ftools\shield\water_bucket\ran_fill.mcfunction'
keep = 'wa'

input('数据包路径为: '+packpath+'\n待展开的mcf路径为: '+mcfpath+'\n按enter继续...')
s3.installpack(mcfpath, keep)
