#> idc:click/modify/pos/y
#   # Pos(y)の設定
# @within function idc:click/modify/

# playsound
    playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2

# add
    execute unless predicate idc:sneaking as @e[tag=idc.select] at @s run tp @s ~ ~0.1 ~ ~ ~
# remove
    execute if predicate idc:sneaking as @e[tag=idc.select] at @s run tp @s ~ ~-0.1 ~ ~ ~