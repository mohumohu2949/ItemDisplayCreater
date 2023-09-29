#> idc:click/modify/billboard/
#   # billboardの設定
# @within function idc:click/modify/

# playsound
    playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2

# trrigerをtrueに
    data modify storage idc: billboard set value true
# centerに変更
    execute if data storage idc: billboard as @e[tag=idc.select] if data entity @s {billboard:"fixed"} run function idc:click/modify/billboard/center
# fixedに変更
    execute if data storage idc: billboard as @e[tag=idc.select] if data entity @s {billboard:"center"} run function idc:click/modify/billboard/fixed

# dataが残ってたら
    data remove storage idc: billboard