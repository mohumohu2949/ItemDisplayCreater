#> idc:actionber
#   # アイテムを手に持っている時に常時実行する処理
# @within advancement idc:selecteditem

##  1 : summon
##  2 : 選択
##  3 : 解除
##  4 : 全解除
##  5 : CustomNameVisible
##  6 : billboard
##  7 : Rotation(Yaw)
##  8 : Rotation(Pitch)
##  9 : Pos.x
## 10 : Pos.y
## 11 : Pos.z
## 12 : scale.all
## 13 : scale.x
## 14 : scale.y
## 15 : scale.z
## 16 : copy(Pos以外)
## 17 : paste
## 18 : kill

## actionber
# summon
    execute if score @s idc.mode matches 1 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "summon","color": "yellow"}]
# 選択
    execute if score @s idc.mode matches 2 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "選択","color": "yellow"}]
# 解除
    execute if score @s idc.mode matches 3 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "解除","color": "yellow"}]
# 全解除
    execute if score @s idc.mode matches 4 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "全解除","color": "yellow"}]
# CustomNameVisible
    execute if score @s idc.mode matches 5 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "CustomNameVisible","color": "yellow"}]
# billboard
    execute if score @s idc.mode matches 6 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "billboard","color": "yellow"}]
# Rotation(Yaw)
    execute if score @s idc.mode matches 7 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "Rotation(Yaw)","color": "yellow"}]
# Rotation(Pitch)
    execute if score @s idc.mode matches 8 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "Rotation(Pitch)","color": "yellow"}]
# Pos.x
    execute if score @s idc.mode matches 9 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "Pos.x","color": "yellow"}]
# Pos.y
    execute if score @s idc.mode matches 10 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "Pos.y","color": "yellow"}]
# Pos.z
    execute if score @s idc.mode matches 11 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "Pos.z","color": "yellow"}]
# scale.all
    execute if score @s idc.mode matches 12 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "scale.all","color": "yellow"}]
# scale.x
    execute if score @s idc.mode matches 13 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "scale.x","color": "yellow"}]
# scale.y
    execute if score @s idc.mode matches 14 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "scale.y","color": "yellow"}]
# scale.z
    execute if score @s idc.mode matches 15 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "scale.z","color": "yellow"}]
# copy(Pos以外)
    execute if score @s idc.mode matches 16 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "copy(Pos以外、最寄りのitem_display)","color": "yellow"}]
# paste
    execute if score @s idc.mode matches 17 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "paste","color": "yellow"}]
# kill
    execute if score @s idc.mode matches 18 run title @s actionbar [{"text": "mode","color": "green"},{"text": " : ","color": "white"},{"text": "kill","color": "yellow"}]

# 事後処理
    advancement revoke @s only idc:selecteditem