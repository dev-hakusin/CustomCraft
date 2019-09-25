# Custom Craft v1.0 From yuki_256

#==========================================
# 必要なこと

・ minecraft/tags/function/load.json に"custom-craft:load"を追加する
・ minecraft/tags/function/tick.json に"custom-craft:main"を追加する(優先度を高く)


#==========================================
# アイテム実装時

プレイヤーの操作時、tag:[CC-crafting]を持ったAECが1tickの間存在するため、
毎tick実行functionによりAECを検知し、その位置にあるドロッパーのnbtより成功かどうかを確かめる
成功の場合はAECにtag:[CC-success]を付与し、ドロッパーのnbtを変更しアイテムを入れる