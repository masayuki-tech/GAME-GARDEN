tags = %w(
  プレイステーション
  プレイステーション2
  プレイステーション3
  プレイステーション4
  プレイステーション5
  Xbox
  Xbox360
  XboxOne
  XboxSerise
  ファミリーコンピュータ
  スーパーファミコン
  NINTENDO64
  ゲームキューブ
  Wii
  WiiU
  NintendoSwitch
  ニンテンドーDS
  ニンテンドー3DS
  メガドライブ
  ワンダーメガ
  セガサターン
  ドリームキャスト
  PCエンジン
  ネオジオ
  ネオジオミニ
  ゲームボーイアドバンス
  ワンダースワン
  steam
)
tags.each do |tag|
  Tag.find_or_create_by(name: tag)
end

genres = %w(
  ACTION
  SHOOTING
  RPG
  SIMULATION
  ADVENTURE
  PUZZLE
)
genres.each do |genre|
  Genre.find_or_create_by(name: genre)
end