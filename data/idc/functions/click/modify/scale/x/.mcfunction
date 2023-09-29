#> idc:click/modify/scale/x/
#   # scaleの設定
# @within function idc:click/modify/

# playsound
    playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2

# add
    execute unless predicate idc:sneaking as @e[tag=idc.select] at @s run function idc:click/modify/scale/x/add
# remove
    execute if predicate idc:sneaking as @e[tag=idc.select] at @s run function idc:click/modify/scale/x/remove