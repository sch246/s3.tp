tag @s add uid.view
function s3:help/tellraw/n_line
execute at @s as @a[distance=..16,predicate=!s3:sneaking] run function s3:uid/trigger/uid_view_i1-
tag @s remove uid.view