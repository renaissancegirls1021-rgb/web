;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;レイヤー処理
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[layopt layer ="1" visible ="true"]
[layopt layer ="2" visible ="true"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;背景
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[bg storage="black.png" time="0"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;変数
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;tips内容
[eval exp="f.tips_text[0] = 'Paint in tubes was invented in the mid-19th century. Before that, paint was carried in bags made from pig bladders or metal syringes.'"]
[eval exp="f.tips_text[1] = 'Rembrandt was known to be a terrible spender, and as a result of buying up art and property, he suffered considerable poverty.'"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;デバッグ
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;デバッグ用
;[jump target ="*tip"]

;オープニング trueで再生する
[eval exp="f.debug_op = true"]
;[eval exp="f.debug_op = false"]

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
[ptext name="title" layer ="1" text ="Episode 2" size ="48" width="900" x ="30" y ="260" color ="black" face ="kei" align ="center" page="back" time="0"]
[ptext name="title" layer ="1" text ="What Monet Wants to Buy" size ="56" width="900" x ="30" y ="350" color ="black" face ="kei" align ="center" page="back" time="0"]

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
[bg storage="atelier.png" time="0"]

;最初のBGM再生
[playbgm storage="nonbiri.mp3"]
[filter layer="1" name="filter" opacity="30"]

;最初のキャラ表示
[chara_show layer="1"  name="rembrandt" face="normal" time="100" top="&f.rembrandt_top"]

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

[manpu layer="1" name="rembrandt" type="onpu" x="0" y="0"]

#rembrandt
Hm-hm♫[p]

;キャラ表示
[chara_show layer="1"  name="monet" face="normal" time="100" top="&f.monet_top"]

#monet
Oh, Rembrandt.[r]
What a cute ring. What happened?[p]

#rembrandt
Heh heh~, It's nice, isn't it?[r]
I bought it the other day through [strong text="EC"]![p]

[chara_mod name="monet" face="odoroki" time="0" cross="false"]

#monet
EC...?[r]
That's a strange name for a shop.[p]

[chara_mod name="rembrandt" face="shirake" time="0" cross="false"]

[manpu layer="1" name="rembrandt" type="mojamoja" x="0" y="0"]

#rembrandt
No, it's e-commerce![r]
It means online shopping![p]

[chara_mod name="rembrandt" face="normal" time="0" cross="false"]

#rembrandt
Nowadays, you can buy anything[r]
with just a tap on your smartphone![p]

[chara_mod name="rembrandt" face="shirake" time="0" cross="false"]

It's just too convenient, [r]
so [text_tips text="my wallet's a bit tight" no="1"] this month...[p]

[chara_mod name="rembrandt" face="normal" time="0" cross="false"]

#monet
Oh my. I didn't realize[r]
it had become so convenient.[p]

[chara_mod name="monet" face="normal" time="0" cross="false"]

#monet
Back in the day, it was hard enough just carrying[r]
around  [text_tips text="a single paintbrush." no="0"][p]

#rembrandt
You should try buying something too, Monet.[r]
I'll show you how to make an account.[p]
[chara_mod name="monet" face="smile" time="0" cross="false"]

#monet
Thank you, Rembrandt.[p]

[chara_mod name="monet" face="normal" time="0" cross="false"]

#monet
There's something I've wanted for a while now.[r]
I wonder what I can buy?[p]

#rembrandt
All kinds of things! You can buy food,[r]
electronics, art supplies, even paintings.[p]

#rembrandt
What kind of thing do you want, Monet?[p]


#monet
Hmm... For example...[p]

[bg storage="donyori.png" time="100"]

[chara_mod name="rembrandt" face="scary" time="0" cross="false"]
[chara_mod name="monet" face="black" time="0" cross="false"]

[playbgm storage="horror.mp3" volume="20"]

[strong text="A flamethrower,"] maybe.[p]

#monet
Lately, there's been a lot of weird bugs[r]
in my garden, and it's been a real problem.[p]

#monet
So I'm looking for a powerful flamethrower,[r]
but it's hard to find in stores...[p]

...I can buy those online, right?[p]

#rembrandt
...................[p]

[bg storage="atelier.png" time="100"]

[playbgm storage="nonbiri.mp3"]

[chara_mod name="rembrandt" face="normal" time="0" cross="false"]

[manpu layer="1" name="rembrandt" type="ase2" x="0" y="0"]

#rembrandt
...Sorry! I just remembered something[r]
I need to do! Let's talk another time![p]

[chara_mod name="monet" face="normal" time="0" cross="false"]

#monet
Oh! Well then, maybe I'll ask you another time.[r]
Sorry to bother you when you're so busy.[p]

;キャラ全部消す
[chara_hide layer="1" time="100" name="monet"]

[wait time="500"]

;振動
[start_wiggle name="rembrandt"]

[chara_mod name="rembrandt" face="scary" time="0" cross="false"]

#rembrandt
Phew... If I tell her about EC,[r]
it'll be trouble...![p]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;終わりの処理
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
*tip

;マスク
[mask time="200"]

;振動終わり
[stop_wiggle name="rembrandt"]

;★★★色々消す処理★★★
;レイヤー処理
[layopt layer ="message0" visible ="false"]
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
;BGM消す
[fadeoutbgm time="200"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;解説に向けての処理
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;muse表示
[image layer ="1" name="muse" storage ="portrait/monet.png" visible ="true" top ="-50" left ="450" width="480"]
[layopt layer ="1" opacity="30"]

;背景
[bg storage="white_frame.png" time="0"]

[playbgm storage="ending.wav" volume="70" loop="false"]

;マスク
[wait time="200"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;tips
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[ptext name="title,line_spacing_large" layer ="2" text ="Monet enjoyed </br>gardening as a hobby." size ="48" width="900" x ="30" y ="48" color ="black" face ="kei" align ="center"]

[html left="0" top="180"]
<div class="box_en">
<p>Monet created <span class="html_red">a large garden</span> at his home in Giverny, France, where he spent half his life, cultivating numerous plants.</p>
<p>The area was over 10,000 square meters—roughly the size of two World Cup soccer fields. Thousands of plant species gathered from around the world were planted there, including <span class="html_red">the water lilies</span> that became the motif for his masterpieces. Naturally, he couldn't maintain it alone, so he employed several gardeners.</p>
<p>The flowers blooming across the vast garden and the shimmering pond became a vital source of inspiration for Monet.</p>
</div>
[endhtml]

;出典
[ptext name="title" layer ="2" text ="北川村「モネの庭」マルモッタン</br>https://www.kjmonet.jp/about/</br>Accessed：2025.12.18" size ="16" width="600" x ="100" y ="540" color ="black" align ="left" time="0"]

;マスクオフ
[mask_off time="200"]

[wait time="1000"]
[ptext name="title" layer ="2" text ="END" size ="50" width="800" x ="30" y ="550" color ="black" face ="kei" align ="right" time="500"]

[s]
