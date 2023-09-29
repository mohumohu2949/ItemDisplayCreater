#> idc:click/modify/paste/data_modify
#   # copyしたnbtをpaste 処理
# @within function idc:click/modify/paste/

# OhMyDat
    function oh_my_dat:please
# data適応
    data modify entity @e[tag=idc.select,sort=nearest,limit=1,distance=..1] CustomNameVisible set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].idc.copy.CustomNameVisible
    data modify entity @e[tag=idc.select,sort=nearest,limit=1,distance=..1] Rotation set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].idc.copy.Rotation
    data modify entity @e[tag=idc.select,sort=nearest,limit=1,distance=..1] billboard set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].idc.copy.billboard
    data modify entity @e[tag=idc.select,sort=nearest,limit=1,distance=..1] transformation.scale set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].idc.copy.transformation.scale
# scale管理用スコアをコピー
    scoreboard players operation @e[tag=idc.select,sort=nearest,limit=1,distance=..1] idc.scale.x = @s idc.scale.x
    scoreboard players operation @e[tag=idc.select,sort=nearest,limit=1,distance=..1] idc.scale.y = @s idc.scale.y
    scoreboard players operation @e[tag=idc.select,sort=nearest,limit=1,distance=..1] idc.scale.z = @s idc.scale.z
# tellraw
    tellraw @s [{"text": "データを適応しました","color": "green"}]