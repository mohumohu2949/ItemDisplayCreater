#> idc:click/modify/summon/process
#   # summonしたitem_displayが実行する処理
# @within function idc:click/modify/summon/

# 中心にtp
    execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
# Tags
    tag @s add idc.item_display
    tag @s add idc.select
# 選択用発光
    data modify entity @s Glowing set value true
# Data Modify
    data modify entity @s CustomNameVisible set value true
    data modify entity @s CustomName set from storage idc: Summon.tag.display.Name
    data modify entity @s item.Count set value 1b
    data modify entity @s item.id set from storage idc: Summon.id
    data modify entity @s item.tag set from storage idc: Summon.tag
# scaleの設定
    scoreboard players set @s idc.scale.x 10
    scoreboard players set @s idc.scale.y 10
    scoreboard players set @s idc.scale.z 10