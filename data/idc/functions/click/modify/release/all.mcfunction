#> idc:click/modify/release/all
#   # item_displayを解除する処理
# @within function idc:click/modify/

# playsound
    playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
# 発光解除
    execute as @e[tag=idc.select] run data modify entity @s Glowing set value false
# tag-remove
    execute as @e[tag=idc.select] run tag @s remove idc.select