#> idc:click/modify/custom_name_visible/
#   # CustomNameVisibleの設定
# @within function idc:click/modify/

# playsound
    playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2

# trrigerをtrueに
    data modify storage idc: CustomNameVisible set value true
# trueに変更
    execute if data storage idc: CustomNameVisible as @e[type=item_display,tag=idc.select] unless data entity @s CustomNameVisible run function idc:click/modify/custom_name_visible/true
# falseに変更
    execute if data storage idc: CustomNameVisible as @e[type=item_display,tag=idc.select] if data entity @s {CustomNameVisible:true} run function idc:click/modify/custom_name_visible/false

# dataが残ってたら
    data remove storage idc: CustomNameVisible