#> idc:click/modify/copy/data_get
#   # nbtをcopy 処理
# @within function idc:click/modify/copy/

# tellraw
    tellraw @s [{"text": "データをコピーしました","color": "green"}]
# item_displayのdata取得
    data modify storage idc: copy set from entity @e[tag=idc.select,sort=nearest,limit=1,distance=..1]
# OhMyDat
    function oh_my_dat:please
## 必要なdataだけ持っていく
    # CustomNameVisibleはfalseの時dataが存在しないから仕分け
        execute if data storage idc: copy.CustomNameVisible run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].idc.copy.CustomNameVisible set from storage idc: copy.CustomNameVisible
        execute unless data storage idc: copy.CustomNameVisible run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].idc.copy.CustomNameVisible set value false
    # その他のもの 
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].idc.copy.Rotation set from storage idc: copy.Rotation
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].idc.copy.billboard set from storage idc: copy.billboard
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].idc.copy.transformation.scale set from storage idc: copy.transformation.scale
    # scale管理用スコアをコピー
        scoreboard players operation @s idc.scale.x = @e[tag=idc.select,sort=nearest,limit=1,distance=..1] idc.scale.x
        scoreboard players operation @s idc.scale.y = @e[tag=idc.select,sort=nearest,limit=1,distance=..1] idc.scale.y
        scoreboard players operation @s idc.scale.z = @e[tag=idc.select,sort=nearest,limit=1,distance=..1] idc.scale.z
# 事後処理
    data remove storage idc: copy