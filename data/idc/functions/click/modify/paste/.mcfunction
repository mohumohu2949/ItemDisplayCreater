#> idc:click/modify/paste/
#   # copyしたnbtをpaste
# @within function idc:click/modify/

# playsound
    playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2

# data取得
    execute if entity @e[tag=idc.select,sort=nearest,limit=1,distance=..1] run function idc:click/modify/paste/data_modify
# 範囲外だったら
    execute unless entity @e[tag=idc.select,sort=nearest,limit=1,distance=..1] run tellraw @s [{"text": "範囲内にitem_displayが存在しません","color": "yellow"}]