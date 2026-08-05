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
[eval exp="f.tips_text[0] = 'Romanticism followed Neoclassicism and embraced the opposite ideals, often putting its artists at odds with the Neoclassicists.'"]
[eval exp="f.tips_text[1] = 'Leonidas was the Spartan hero of ancient Greece and the subject of one of David’s most famous paintings.'"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;デバッグ
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;デバッグ用

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
[ptext name="title" layer ="1" text ="Episode 3" size ="48" width="900" x ="30" y ="260" color ="black" face ="kei" align ="center" page="back" time="0"]
[ptext name="title" layer ="1" text ="David the Tyrant" size ="56" width="900" x ="30" y ="350" color ="black" face ="kei" align ="center" page="back" time="0"]

;表示
[trans layer="1" time="500" ]

[wait time="500"]

;再生ボタン
[glink color="op_start_btn" text="START" width="300" x="330" y="500" target="*start"]
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
This is the atelier of David,[r]
leader of the Neoclassical Muses.[p]

#narration
Day after day, David and her disciples gather here,	[r]
plotting their scheme to dominate the art world...![p]

;キャラ表示
[c_show name="ingres" face="normal"]

[say name="ingres"]
Good morning, everyo... huh?	[p]

[c_hide name="ingres"]

[c_show name="david" face="angry"]

[say name="david"]
[man name="david" type="muka" pos="right"]
...Tch.	[p]

[c_hide name="david"]

[c_show name="ingres" face="komari"]
[c_show name="gerard" face="angry"]
[c_show name="gros" face="normal"]



[say name="gerard"]
[man name="gerard" type="nami2" pos="left"]
(Y-You're late!)[p]

[say name="ingres"]
(H-Hey, Gérard!	[r]
Isn't Master David in a TERRIBLE mood!?)[p]

[say name="gerard"]
(Well... earlier today, Master David went to the bakery	[r]
to buy her favorite fried bread...)	[p]

[say name="gros"]
(The last one sold out right in front of her...[r]
to a Muse of Romanticism.)	[p]

[c_face name="ingres" face="angry"]

[say name="ingres"]
(Romanticism!?[r]
That's the[text_tips text=" very style we're always at odds with!" no="0"])[p]

[say name="ingres"]
(Yeah... I'd be furious too...)	[p]

[c_face name="gerard" face="komari"]

[say name="gerard"]
[man name="gerard" type="ase" pos="left"]
(She looks way too dangerous to approach.	[r]
Maybe we should sneak out before she notices...)[p]

;キャラ全部消す
[chara_hide_all layer="1" time="100" wait="true"]

[wait time="1000"]

[c_show name="david" face="angry"]
[c_show name="ingres" face="normal"]

[say name="david"]
...Ingres.	[p]

[c_face name="ingres" face="fear"]

[say name="ingres"]
[man name="ingres" type="nanto" pos="left"]
E-EEK!	[r]
Y-Yes, Master David!?	[p]

[say name="david"]
I am in an exceptionally foul mood.	[r]
Therefore... Entertain me.	[p]

[say name="ingres"]
Guh...! (H-Here it comes...	[r]
Master David's impossible demands!)	[p]

[c_face name="ingres" face="angry"]

[say name="ingres"]
F-For the revival of Neoclassicism...!	[r]
Ingres will now perform... a comedy routine!	[p]

[stopbgm]

[c_hide name="david"]

[c_face name="ingres" face="smile"]

;背景動画
[bgmovie storage="light.mp4" time="100"]

[say name="ingres"]
[man name="ingres" type="waiwai" pos="left"]
[playse storage="kira.mp3" loop="false"]
♪ I'm [text_tips text="Leonidas of Thermopylae" no="1"]~ ♪[r]
Your ugly painting gets me cry!	[p]

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
[kei text="...Rejected!!!!" red="true"]	[p]

[c_face name="ingres" face="tohoho"]

[say name="ingres"]

[playse storage="bishi.mp3" loop="false"]

[kei text="Gah!" red="true"]	[p]

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
I-Ingres![r]
Hang in there![p]

[say name="gerard"]
(Ingres...	[r]
We'll never forget you...)[p]

[c_hide name="gros"]

[c_show name="david" face="angry"]

[say name="david"]
Gérard. You're next.	[r]
Do something amusing.	[p]

[playbgm storage="dotabata.mp3"]

[c_face name="gerard" face="angry"]

[say name="gerard"]
[man name="gerard" type="nanto" pos="left"]
Ghk!	[p]

[say name="gerard"]
V-Very well! Witness Gérard... [r]
the spirit of the King's Painter!!	[p]

;キャラ全部消す
[chara_hide_all layer="1" time="100" wait="true"]

[wait time="500"]

[c_show name="gros" face="cry"]

[playse storage="bomb.mp3" loop="false"]

#gerard
HRAAAAH!![r]
How's THAT!?[p]

[playse storage="bishi.mp3" loop="false"]

#david
Pathetic.[r]
Again.[p]

[playse storage="bomb_2.mp3" loop="false"]
#gerard
RRRRAAAAAAAAH!![r]
Neoclassicism... shall NEVER DIE!![p]

[c_face name="gros" face="tohoho"]

[playse storage="katakata.mp3" loop="false"]

[start_wiggle name="gros" layer="1"]

[say name="gros"]
(I-If hell truly exists...[r]
...it has to be this place...)[p]

[say name="david"]
Gros.[r]
After Gérard... you're next.[p]

[playse storage="shock.mp3" loop="false"]

[say name="gros"]
E-EEEK!	[p]

[scene_change bg="black.png"]

[stop_wiggle name="gros" layer="1"]

[say name="narration"]
Some time later...[p]

[scene_change bg="ncl.png"]

[xchgbgm storage="Onigiri.mp3" loop="true" time="100"]

[c_show name="girodet" face="normal"]

[say name="girodet"]
[man name="girodet" type="waiwai" pos="center"]
Yo! Girodet's fashionably late~!	[r]
Oh, Master David!	[p]

[c_face name="girodet" face="wink"]

[say name="girodet"]
The bakery over there had some awesome-looking	[r]
fried bread, so I picked some up! Wanna eat together?	[p]

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
...Huh? Why's everybody lying on the floor?[r]
Wait... was it nap time?	[p]

[c_show name="david" face="angry"]

[say name="david"]
Mm. It smells excellent.[p]

[c_face name="david" face="smile"]

[say name="david"]
[man name="david" type="heart3" pos="center"]
Girodet... After all...	[r]
you are the most entertaining one... Heh heh...[p]

[c_face name="girodet" face="wink"]

[say name="girodet"]
??? Well... I have no idea what's going on,	[r]
but if you're complimenting me, I'll gladly take it![p]

;キャラ全部消す
[chara_hide_all layer="1" time="100" wait="true"]

#

[image layer ="1" name="everyone" storage ="sisiruirui.png" x ="0" y ="0" time="100"]

[stopbgm]
[wait time="500"]

[playse storage="ochi.mp3"]

[say name="everyone"]
THUD...![p]

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

[ptext name="title,line_spacing_large" layer ="2" text ="David had <br>many apprentices." size ="48" width="900" x ="30" y ="48" color ="black" face ="kei" align ="center"]

[html left="0" top="180"]
<div class="box_en">
<p>To handle commissions, many painters ran <span class="html_red">workshops</span> with large teams of apprentices. David's Neoclassical workshop was one of the largest, reportedly numbering as many as <span class="html_red">400 apprentices</span>.</p>
<p>It produced many outstanding artists. <span class="html_red">Gros, Girodet, and Gérard</span> are often mentioned together because their names begin with the same letter, while <span class="html_red">Ingres</span>, David's finest pupil, became the leading figure of Neoclassicism after David left France.</p>
</div>
[endhtml]

;出典
[ptext name="title" layer ="2" text ="「西洋美術館」<br>小学館	1999" size ="16" width="600" x ="100" y ="540" color ="black" align ="left" time="0"]

;マスクオフ
[mask_off time="200"]

[wait time="1000"]
[ptext name="title" layer ="2" text ="END" size ="50" width="800" x ="30" y ="550" color ="black" face ="kei" align ="right" time="500"]

[s]
