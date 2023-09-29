#> idc:load
#   # サーバーをリロードしたときにされる処理
# @within tag/function minecraft:load

## Scoreboard
    #> 常に値が設定される変数用スコアボード
    # @within idc:**
        scoreboard objectives add idc.mode dummy
        scoreboard objectives add idc.scale.x dummy
        scoreboard objectives add idc.scale.y dummy
        scoreboard objectives add idc.scale.z dummy


    #> プレイヤーのクリック検知用スコアボード
    # @within idc:**
        scoreboard objectives add idc.click.mode minecraft.used:minecraft.warped_fungus_on_a_stick "mode用検知"
        scoreboard objectives add idc.click.modify minecraft.used:minecraft.carrot_on_a_stick "modify用検知"