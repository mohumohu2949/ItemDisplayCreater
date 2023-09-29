#> idc:click/modify/release/
#   # item_displayを解除する処理
# @within function idc:click/modify/

# playsound
    playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
# 発光解除
    execute as @e[tag=idc.select,sort=nearest,limit=1,distance=..1] run data modify entity @s Glowing set value false
# tag-remove
    execute as @e[tag=idc.select,sort=nearest,limit=1,distance=..1] run tag @s remove idc.select
# 範囲外だったら
    execute unless entity @e[tag=idc.select,sort=nearest,limit=1,distance=..1] run tellraw @s [{"text": "範囲内にitem_displayが存在しません","color": "yellow"}]