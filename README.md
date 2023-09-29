# ItemDisplayCreater
item_displayやblock_displayをsummonして、Pos、Rotate、等のnbtの変更を行えるデータパックです。
専用のアイテム二つを使用して自由に編集することができます。
完全に装飾用なので変な期待はしないでください。←ここ重要
未然に事故を防ぐために、前提データパックと注意事項は確認しておいてください。

## 動作バージョン
- 1.20.2
scale機能でマクロ使用してます、ごめんなさい。

## 前提データパック => OhMyDat
赤石愛様
url : https://github.com/Ai-Akaishi/OhMyDat
copy・paste機能で使用しています。
copy・paste機能を使用しないのであれば無くても大丈夫です。

## 注意事項
アイテムや3Dモデルがないブロックを、block_displayでsummonさせると透明になってしまいます。
その場合、処理されない場合があるので自分で探してkillする必要があります。
基本的にはitem_displayの方を使用するようにしてください。

## 使い方
### 専用アイテム
```
モード切り替え用
/loot give @s loot idc:mode
nbt変更用
/loot give @s loot idc:modify
```
悪いけど2回実行してね。

### 基本的な操作
モード切り替え用のロッドを右クリックをすると機能の切り替えができます。
nbt変更用のロッドを右クリックすると、モード切り替え用のロッドで設定した機能のnbtの変更ができます。
スニークをしていない状態のクリックだと正の方向で動作して、スニークをしている状態のクリックだと負の方向で動作します。
詳しい各機能の説明は下から閲覧ください。

## 機能
- summon
- 選択
- 解除
- 全解除
- CustomNameVisible
- billboard
- Rotation(Yaw)
- Rotation(Pitch)
- Pos.x
- Pos.y
- Pos.z
- scale.all
- scale.x
- scale.y
- scale.z
- copy(Pos以外)
- paste
- kill
以上の18種類があります。
多いけど許して！

### summon
左手に持っているアイテムをdisplayとしてsummonします。
スニーク無し => item_display
スニーク有り => block_display
summonされた後のdisplayは選択状態になります。

### 選択
半径1マス以内にいるdisplayを選択状態にします。
複数体の選択が可能です。
複数選択されたdisplayは全て同時にアクションを起こします。

### 解除
半径1マス以内にいる選択状態のdisplayを選択状態から解除します。

### 全解除
全ての選択状態のdisplayを選択状態から解除します。

### CustomNameVisible
item_displayのCustomNameVisibleの切り替えをします。
block_displayではできません。
display.Nameが設定されているItemのみ適応されます。

### billboard
displayのbillboardの種類を変更します。
"fixed"と"center"の二種類で切り替えます。
必要であれば追加するか、nbtを自身で変更してください。

### Rotation(Yaw)
Y軸回転をします。
一度の回転で15°に設定してあります。
必要であれば変更してください。

### Rotation(Pitch)
X軸回転をします。
一度の回転で15°に設定してあります。
必要であれば変更してください。

### Pos.x
X軸上に0.1マス移動します。
必要であれば変更してください。

### Pos.y
Y軸上に0.1マス移動します。
必要であれば変更してください。

### Pos.z
Z軸上に0.1マス移動します。
必要であれば変更してください。

### scale.all
x,y,zの値を0.1ずつscaleを変更します。

### scale.x
xの値だけ0.1ずつscaleを変更します。

### scale.y
yの値だけ0.1ずつscaleを変更します。

### scale.z
zの値だけ0.1ずつscaleを変更します。

### copy(Pos以外)
半径1マス以内にいる一番近い選択状態のdisplayのnbtをコピーします。
コピーされるもの
- CustomNameVisible
- billboard
- Rotation(Yaw・Pitch)
- scale

### paste
半径1マス以内にいる一番近い選択状態のdisplayに、copy機能でコピーしたnbtを適応させます。

### kill
半径1マス以内にいる一番近い選択状態のdisplayをkillします。

## あとがき
完全に身内用に作ったものなので、機能が手抜きだったりしてるかもしれませんがご了承ください。
いっぱいアイテム増やしてインベントリをごちゃごちゃさせたくなかったから切り替え式で作りました。
ライセンスは外さないでほしいなぁ。

バグ等あればtwitter(X)から報告お願いします。気分で直します。
この構文にした方がいいよ！とかあればじゃんじゃん教えてください。吸収します。
中身の数値変えたり、機能増やしたりはご自由に。
twitter : https://twitter.com/mohumohu2949