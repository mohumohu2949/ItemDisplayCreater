#> idc:click/modify/summon/
#   # item_displayをsummonする処理
# @within function idc:click/modify/

# playsound
    playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2

# 左手のアイテム取得
    data modify storage idc: Summon set from entity @s Inventory[{Slot:-106b}]

# Error
    execute unless data storage idc: Summon run tellraw @s [{"text": "[Error] ","color": "red"},{"text": "Dataが存在しません => ","color": "white"},{"text": "idc: Summon","color": "yellow"}]
## スニークでitem_displayかblock_displayか切り替え
    # item_display
        execute unless predicate idc:sneaking if data storage idc: Summon summon item_display run function idc:click/modify/summon/item_display
    # block_display
        execute if predicate idc:sneaking if data storage idc: Summon summon block_display run function idc:click/modify/summon/block_display
# 事後処理
    data remove storage idc: Summon