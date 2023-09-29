#> idc:click/modify/select/
#   # item_displayを選択する処理
# @within function idc:click/modify/

# playsound
    playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
# tag
    execute as @e[tag=idc.item_display,sort=nearest,limit=1,distance=..1] run tag @s add idc.select
# 発光
    execute as @e[tag=idc.item_display,sort=nearest,limit=1,distance=..1] run data modify entity @s Glowing set value true
# 範囲外だったら
    execute unless entity @e[tag=idc.item_display,sort=nearest,limit=1,distance=..1] run tellraw @s [{"text": "範囲内にitem_displayが存在しません","color": "yellow"}]