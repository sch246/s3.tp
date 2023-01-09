# input: storage temp list0
#        storage temp list1
# output: storage temp list
data remove storage temp list
data modify storage temp list set from storage temp list0
data modify storage temp list append from storage temp list1[]