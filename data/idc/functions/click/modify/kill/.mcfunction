#> idc:click/modify/kill/
#   # item_displayをkill
# @within function idc:click/modify/

# playsound
    playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
# 範囲外だったら
    execute unless entity @e[tag=idc.select,sort=nearest,limit=1,distance=..1] run tellraw @s [{"text": "範囲内にitem_displayが存在しません","color": "yellow"}]
# 範囲内に居たら
    kill @e[tag=idc.select,sort=nearest,limit=1,distance=..1]
