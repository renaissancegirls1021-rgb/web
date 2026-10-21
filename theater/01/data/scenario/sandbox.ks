

[bg storage="center.png" time="0"]

[layopt layer ="1" visible ="true"]

;最初のキャラ表示
[chara_show layer="1"  name="rembrandt" face="normal" time="0" top="&f.rembrandt_top"]


[iscript]
const img = document.querySelector('.rembrandt'); // クラス名で取得
if (img) {
  const rect = img.getBoundingClientRect(); // 位置とサイズを取得

  // ビューポート（画面）内での座標
  console.log('画面内での座標:', rect.width, rect.height);

  // ページ全体での座標（スクロール分を加味）
  f.x = rect.width;
  f.y = rect.height;
  console.log('ページ全体での座標:', f.x, f.y);
} else {
  console.log('指定したクラスの画像が見つかりません');
}
[endscript]

[ptext layer ="1" text ="&f.x" size ="50" x ="100" y ="100" color ="white" face ="kei"]
[ptext layer ="1" text ="&f.y" size ="50" x ="100" y ="200" color ="white" face ="kei"]
[s]
