;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;レイヤー処理
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;レイヤー1　キャラクター
[layopt layer ="1" visible ="true"]

;レイヤー2　特殊効果など
[layopt layer ="2" visible ="true"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;背景
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[bg storage="black.png" time="0"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;変数
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;tips内容
[eval exp="f.tips_text[0] = 'ロマン主義は新古典主義の次に出てきた美術様式。新古典主義とは相反する考え方で、画家たちはしばしば対立した。'"]
[eval exp="f.tips_text[1] = 'レオニダスは古代ギリシャのスパルタ軍を率いた英雄。ダヴィッドの代表作の題材にもなっている。'"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;デバッグ
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;デバッグ用

;tipsにジャンプ
;[jump target ="*tip"]

;オープニング trueで再生する
[eval exp="f.debug_op = true"]
;[eval exp="f.debug_op = false"]

;音楽再生オンオフ
[eval exp="f.debug_mute = true"]
[eval exp="f.debug_mute = false"]

[if exp ="f.debug_mute == true"]
[bgmopt volume="0"]
[endif]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;メイン
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;オープニング
[if exp ="f.debug_op == true"]

;スマホの時
[if exp ="f.smartphone == true"]
[layopt layer ="1" visible ="true"]
[playbgm storage="op.mp3" loop="false"]
[bg storage="black_flame.png" time="100"]
[image name="logo" layer ="1" storage ="logo.png" width="600" top ="80" left ="180" time="100"]
[wait time="1000"]
[anim name="logo" top="-=600" time="500"]
[wait time="500"]
[free layer="1" name="logo" time="0"]
[bg storage="white_frame.png" time="500"]
[wait time="500"]

;スマホでない時
[else]
;背景動画再生
[bgmovie storage="title.mp4" loop="false" volume="30"]
[wait time="3000"]
[endif]

;タイトル表示
[image name="title" layer ="1" storage ="logo.png" width="200" top ="50" left ="380" page="back" time="0"]
[ptext name="title" layer ="1" text ="第３話" size ="48" width="900" x ="30" y ="260" color ="black" face ="kei" align ="center" page="back" time="0"]
[ptext name="title" layer ="1" text ="暴君ダヴィッド" size ="56" width="900" x ="30" y ="350" color ="black" face ="kei" align ="center" page="back" time="0"]

;表示
[trans layer="1" time="500" ]

[wait time="500"]

;再生ボタン
[glink color="op_start_btn" text="再生する" width="300" x="330" y="500" target="*start"]
[s]

[endif]

*start

;preloadテキスト無効
[loading_log preload="none"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;タイトル後場面転換
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;マスク
[mask time="200"]
[stop_bgmovie]
[free layer="1" name="title" time="0"]

;最初の背景設定
[bg storage="ncl.png" time="0"]

;最初のBGM再生
[playbgm storage="montagu.mp3"]
[filter layer="1" name="filter" opacity="30"]

;最初からキャラを表示させておく場合、onにする
;[chara_show layer="1"  name="narration" face="normal" time="100" top="&narration_top"]

;マスク
[wait time="200"]
[mask_off time="200"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;スキップ・オートボタン
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[if exp ="f.en == true"]
[button graphic="button/skip_en.png" role="skip" x="540" y="440"]
[button graphic="button/auto_en.png" role="auto" x="750" y="440"]
[else]
[button graphic="button/skip.png" role="skip" x="540" y="440"]
[button graphic="button/auto.png" role="auto" x="750" y="440"]
[endif]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;本編
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[layopt layer ="message0" visible ="true"]

#narration
ここは新古典主義のミューズ、	[r]
ダヴィッドのアトリエ。	[p]

#narration
ダヴィッドとその弟子たちは、日夜ここに集い	[r]
芸術界を支配する計画を練っているのだ……！	[p]

;キャラ表示
[c_show name="ingres" face="normal"]

[say name="ingres"]
おはようございま……ん？	[p]

[c_hide name="ingres"]

[c_show name="david" face="angry"]

[say name="david"]
[man name="david" type="muka" pos="right"]
イラッ……。	[p]

[c_hide name="david"]

[c_show name="ingres" face="komari"]
[c_show name="gerard" face="angry"]
[c_show name="gros" face="normal"]



[say name="gerard"]
[man name="gerard" type="nami2" pos="left"]
(お、遅いじゃないのっ！)	[p]

[say name="ingres"]
(ちょっと！　ジェラール！	[r]
ダヴィッド様の機嫌がサイアクじゃない！？)	[p]

[say name="gerard"]
(それがね……さっき、ダヴィッド様が	[r]
パン屋で好物の「揚げパン」を買おうとしたんだけど……)	[p]

[say name="gros"]
(眼の前で、最後のパンが売り切れて……それも、	[r]
買ったのはロマン主義のミューズだったとか……)	[p]

[c_face name="ingres" face="angry"]

[say name="ingres"]
(ロマン主義って……私たち新古典主義が[r]
[text_tips text="対立してる様式" no="0"]じゃない！)	[p]

[say name="ingres"]
(たしかに、それは腹立たしいわね……)	[p]

[c_face name="gerard" face="komari"]

[say name="gerard"]
[man name="gerard" type="ase" pos="left"]
(触れたらヤバそうだし、とりあえず	[r]
視界に入らないように、そ～っと部屋の外に……)	[p]

;キャラ全部消す
[chara_hide_all layer="1" time="100" wait="true"]

[wait time="1000"]

[c_show name="david" face="angry"]
[c_show name="ingres" face="normal"]

[say name="david"]
……アングル。	[p]

[c_face name="ingres" face="fear"]

[say name="ingres"]
[man name="ingres" type="nanto" pos="left"]
ヒ、ヒィッ！	[r]
ど、どうされましたか、ダヴィッド様っ！	[p]

[say name="david"]
私は今、非常に機嫌が悪い。	[r]
よって……何か面白いことをやれ。	[p]

[say name="ingres"]
ぐっ……！	[r]
(で、出た……ダヴィッド様の、無茶振り！)	[p]

[c_face name="ingres" face="angry"]

[say name="ingres"]
し、新古典主義の再興のためなら……！	[r]
アングル、今から一発芸、やります！	[p]

[stopbgm]

[c_hide name="david"]

[c_face name="ingres" face="smile"]

;背景動画
[bgmovie storage="light.mp4" time="100"]

[say name="ingres"]
[man name="ingres" type="waiwai" pos="left"]
[playse storage="kira.mp3" loop="false"]
あそ～れ、[text_tips text="テルモピュライの～レオニ～ダス～♪" no="1"]	[r]
燃えないゴミは～～火曜に出すッッ！	[p]

[c_show name="david" face="angry"]

[say name="david"]
………………	[p]

[say name="ingres"]
………………	[p]

[bg storage="donyori.png" time="0"]
[stop_bgmovie]

;集中線
[layermode_movie video="syutyu.mp4" time="100" mode="multiply" opacity="50"]

[c_face name="david" face="veryangry"]

[say name="david"]
[playse storage="thunder.mp3" loop="false"]
[kei text="……落選ッ！" red="true"]	[p]

[c_face name="ingres" face="tohoho"]

[say name="ingres"]

[playse storage="bishi.mp3" loop="false"]

[kei text="うげっ！" red="true"]	[p]

;画面効果消す
[free_layermode time="0"]
[bg storage="ncl.png" time="100"]

;キャラ全部消す
[chara_hide_all layer="1" time="100" wait="true"]

[wait time="100"]

[playse storage="taore.mp3" loop="false"]

[quake count="5" time="300" hmax="20"]


[wait time="1000"]

[c_show name="gros" face="cry"]
[c_show name="gerard" face="komari"]

[say name="gros"]
あ、アングルさん！[r]
しっかりしてください！[p]

[say name="gerard"]
(アングル……アンタのことは、	[r]
忘れないからね……！)	[p]

[c_hide name="gros"]

[c_show name="david" face="angry"]

[say name="david"]
ジェラール。	[r]
……キサマもだ。なにか面白いことをやれ。	[p]

[playbgm storage="dotabata.mp3"]

[c_face name="gerard" face="angry"]

[say name="gerard"]
[man name="gerard" type="nanto" pos="left"]
うっ！	[p]

[say name="gerard"]
……わ、わかりましたっ！	女ジェラール……[r]
王の画家の生き様、見せたらあッ！	[p]

;キャラ全部消す
[chara_hide_all layer="1" time="100" wait="true"]

[wait time="500"]

[c_show name="gros" face="cry"]

[playse storage="bomb.mp3" loop="false"]

#gerard
でりゃ～～っ！[r]
どんなもんじゃいっ！[p]

[playse storage="bishi.mp3" loop="false"]

#david
くだらん。[r]
やり直しだ。[p]

[playse storage="bomb_2.mp3" loop="false"]
#gerard
うおりゃああああああっ！[r]
新古典主義は、不滅じゃあああああっ！[p]

[c_face name="gros" face="tohoho"]

[playse storage="katakata.mp3" loop="false"]

[start_wiggle name="gros" layer="1"]

[say name="gros"]
(じ……地獄があるとするなら……	[r]
それは、ここに違いない……！)	[p]

[say name="david"]
グロ。ジェラールの次は[r]
キサマの番だからな……。[p]

[playse storage="shock.mp3" loop="false"]

[say name="gros"]
ヒ、ヒイッ！	[p]

[scene_change bg="black.png"]

[stop_wiggle name="gros" layer="1"]

[say name="narration"]
それから、しばらくして……	[p]

[scene_change bg="ncl.png"]

[xchgbgm storage="Onigiri.mp3" loop="true" time="100"]

[c_show name="girodet" face="normal"]

[say name="girodet"]
[man name="girodet" type="waiwai" pos="center"]
ジロデちゃん、遅れて登場～。	[r]
あ、ダヴィッド様！	[p]

[c_face name="girodet" face="wink"]

[say name="girodet"]
そこのパン屋で、うまそうな「揚げパン」売ってたんで、	[r]
買ってきたっす！　一緒に食いませんか？	[p]

[c_hide name="girodet"]

[playse storage="chi-n.mp3"]

[image layer ="1" name="everyone" storage ="sisiruirui.png" x ="0" y ="0" time="100"]

[say name="everyone"]
……。	[p]

[free name="everyone" layer="1" time="100"]

;キャラ全部消す
[chara_hide_all layer="1" time="100" wait="true"]

[c_show name="girodet" face="toboke"]

[say name="girodet"]
[man name="girodet" type="hatena" pos="center"]
……あれ？　どうしてみんな寝っ転がってんの？	[r]
もしかして、お昼寝タイムだった？	[p]

[c_show name="david" face="angry"]

[say name="david"]
ウム、良い匂いの揚げパンだな。[p]

[c_face name="david" face="smile"]

[say name="david"]
[man name="david" type="heart3" pos="center"]
ジロデ。……やはりキサマが、	[r]
一番おもしろい……フッフッフ。	[p]

[c_face name="girodet" face="wink"]

[say name="girodet"]
？？？　……なんかしんないけど、	[r]
褒めてもらえるなら、ありがたいっすね！	[p]

;キャラ全部消す
[chara_hide_all layer="1" time="100" wait="true"]

#

[image layer ="1" name="everyone" storage ="sisiruirui.png" x ="0" y ="0" time="100"]

[stopbgm]
[wait time="500"]

[playse storage="ochi.mp3"]

[say name="everyone"]
……ガクッ！	[p]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;終わりの処理
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
*tip

;マスク
[mask time="200"]

;★★★色々消す処理★★★
;fix消す
[clearfix]
;画面効果消す
[free_layermode time="0"]
;アニメ全停止
[stop_kanim layer="1"]
;キャラ消す
[chara_hide_all layer="1" time="0" wait="true"]
;名前消す
#
;テキスト消す
[cm]

;レイヤー処理　全部消して非表示
[layopt layer ="message0" visible ="false"]
[freeimage layer="1"]
[layopt layer ="1" visible ="false"]

;BGM消す
[fadeoutbgm time="200"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;解説に向けての処理
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;muse表示
[image layer ="1" name="muse" storage ="portrait/david.png" visible ="true" top ="30" left ="500" width="480"]
[layopt layer ="1" opacity="30"]

;背景
[bg storage="white_frame.png" time="0"]

[playbgm storage="ending.mp3" volume="70" loop="false"]

;マスク
[wait time="200"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;tips
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[ptext name="title,line_spacing_large" layer ="2" text ="ダヴィッドには、<br>弟子がたくさんいた。" size ="48" width="900" x ="30" y ="48" color ="black" face ="kei" align ="center"]

[html left="0" top="180"]
<div class="box">
<p>昔の画家は依頼をこなすために<span class="html_red">工房</span>と呼ばれる組織を構え、多くの弟子(スタッフ)とともに制作していました。その中でも新古典主義の画家・ダヴィッドの工房はかなり大規模で、弟子の数は<span class="html_red">400人</span>にのぼったとも言われています。</p>
<p>弟子の中からは多くの優秀な画家を輩出しており、<span class="html_red">グロ、ジロデ、ジェラール</span>は頭文字が同じことから揃って語られることがあります。また、<span class="html_red">アングル</span>は特に優秀な弟子として、ダヴィッドがフランスを去った後は新古典主義の後継者となりました。</p>
[endhtml]

;出典
[ptext name="title" layer ="2" text ="「西洋美術館」<br>小学館	1999" size ="16" width="600" x ="100" y ="540" color ="black" align ="left" time="0"]

;マスクオフ
[mask_off time="200"]

[wait time="1000"]
[ptext name="title" layer ="2" text ="END" size ="50" width="800" x ="30" y ="550" color ="black" face ="kei" align ="right" time="500"]

[s]
