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
[eval exp="f.tips_text[0] = 'This is one of Van Gogh’s masterpieces, characterized by the swirling blue starry sky.'"]
[eval exp="f.tips_text[1] = 'Influenced by his father, who was a priest, Van Gogh aspired to become a Christian missionary, but gave up along the way.'"]

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
[ptext name="title" layer ="1" text ="Episode 1" size ="48" width="900" x ="30" y ="260" color ="black" face ="kei" align ="center" page="back" time="0"]
[ptext name="title" layer ="1" text ="Van Gogh wants to be pampered!" size ="56" width="900" x ="30" y ="350" color ="black" face ="kei" align ="center" page="back" time="0"]

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
[filter layer="base" blur="1"]
[image layer ="1" name="filter" storage ="white.png"  top ="0" left ="0" ]

;最初のBGM再生
[playbgm storage="Onigiri.mp3"]
[filter layer="1" name="filter" opacity="30"]

;最初のキャラ表示
[chara_show layer="1"  name="gogh" face="cry" time="100" top="&f.gogh_top"]

;マスク
[wait time="200"]
[mask_off time="200"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;本編
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[if exp ="f.en == true"]
[button graphic="button/skip_en.png" role="skip" x="540" y="440"]
[button graphic="button/auto_en.png" role="auto" x="750" y="440"]
[else]
[button graphic="button/skip.png" role="skip" x="540" y="440"]
[button graphic="button/auto.png" role="auto" x="750" y="440"]
[endif]

[layopt layer ="message0" visible ="true"]

[manpu layer="1" name="gogh" type="gaan2" x="-10" y="50"]

[playse storage="shock.mp3" volume="100"]

#gogh
Ummm...[p]

;キャラ表示
[chara_show layer="1"  name="rembrandt" face="komari" time="100" top="&f.rembrandt_top"]

#rembrandt
Oh dear. What’s wrong, Van Gogh?[r]
You look paler than  [text_tips text="the starry night." no="0"][p]

[chara_mod name="gogh" face="cry2" time="0" cross="false"]

#gogh
Ah. Ren-chan senpai.[r]
Listen to me~.[p]

Recently, if you look at social media, you’ll see people who are good at drawing everywhere.[p]

Meanwhile, my paintings aren’t selling at all, and I’m struggling to even afford my meals today...[p]

[playse storage="bomb.mp3"]
;振動
[start_wiggle name="gogh"]

[kei text="...I want to be pampered too!"][p]

[chara_mod name="rembrandt" face="shirake" time="0" cross="false"]

[manpu layer="1" name="rembrandt" type="ase" x="-10"]

#rembrandt
Wow, I regret worrying about this![p]

;振動終わり
[stop_wiggle name="gogh"]

[manpu layer="1" name="gogh" type="ase2" x="20" y="90"]

#gogh
Uwaaaaan![r]
Please stop attacking me![p]

Ren-chan senpai, do you have any good ideas? [r]
Any ideas that will get [strong text="everyone looking at me!"][p]

#rembrandt
If that were easy,[r]
artists wouldn’t have to struggle...[p]

[chara_mod name="rembrandt" face="komari" time="0" cross="false"]

But as a friend,[r]
I want to do something to help.[p]

[chara_mod name="rembrandt" face="normal" time="0" cross="false"]

[manpu layer="1" name="rembrandt" type="pikon"]

#rembrandt
……Oh, right![r]
Why not try that trendy [strong text="“thing”"] everyone’s doing?[p]

#gogh
...“thing”?[p]

;シーンチェンジ
[scene_change]

;キャラ表示
[chara_show layer="1"  name="michelangelo" face="normal" time="100" top="&f.michelangelo_top"]

#michelangelo
Hey Rembrandt.[r]
Have you seen the Van Gogh one recently?[p]

;キャラ表示
[chara_show layer="1"  name="rembrandt" face="shirake" time="100" top="&f.rembrandt_top"]

#rembrandt
Ah, Michelangelo. [r]
Oh, I see, you don’t use social media, do you?[p]

She said she wanted to be pampered, so I suggested[r]
she try [strong text="streaming an art tutorial."][p]

#michelangelo

Ah. She was aiming to be [text_tips text="a missionary" no="1"] right?[r]
She seems like she'd be good at teaching.[p]

#rembrandt
But...[r]
I guess she took it in a strange way.[p]

;シーンチェンジ
[scene_change bg="youtube.png" bgm="oikakekko.mp3"]

;キャラ表示
[chara_show layer="1"  name="gogh" face="normal" time="100" top="&f.gogh_top"]

#gogh
[kei text="Hello, YouTube!"][r]
[kei text="It’s Van Gogh!"][p]

Today, I’d like to introduce [strong text="drawing habits that artists who do this will never succeed!"][p]

[chara_mod name="gogh" face="smile" time="0" cross="false"]

If any of these apply to you, click on the URL below![r]
I offer useful resources at [strong text="reasonable prices!"][p]

[playse storage="kira.mp3" volume="100"]
;ジャンプ
[kanim keyframe="jump" name="gogh" time="200" count="2"]

and, I share valuable info on [strong text="the members-only Discord!"][r]
Let’s all become god-tier artists together~~~~~![p]

;シーンチェンジ

;マスク
[mask time="200"]

;文章消す
#
[cm]

;キャラ全部消す
[chara_hide_all layer="1" time="0" wait="true"]

[bg storage="atelier.png" time="0"]

;キャラ表示
[chara_show layer="1"  name="michelangelo" face="angry" time="1" top="&f.michelangelo_top"]

;キャラ表示
[chara_show layer="1"  name="rembrandt" face="shirake" time="1" top="&f.rembrandt_top"]

;[wait time = ""]
[wait time="10"]
;マスクオフ
[mask_off time="200"]


#michelangelo

;集中線
[layermode_movie video="syutyu.mp4" time="100" mode="multiply" opacity="50"]

;漫符
[manpu layer="1" name="michelangelo" type="muka3" x="100"]

[playse storage="bomb_2.mp3" volume="100"]

[kei text="……That’s a con artist!"][p]

#rembrandt
Moreover, her paintings aren’t selling well.[p]

[strong text="The outrage was so unbelievable"] that she turned off the channel and went on a journey of escape to France.[p]

[playse storage="bishi.mp3" volume="100"]

;振動
[start_wiggle name="michelangelo"]
#michelangelo
[kei text="Don’t come back like that!" red="true"][p]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;終わりの処理
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
*tip

;マスク
[mask time="200"]

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
[image layer ="1" name="muse" storage ="portrait/gogh.png" visible ="true" top ="-50" left ="450" width="480"]
[layopt layer ="1" opacity="30"]

;背景
[bg storage="white_frame.png" time="0"]

[playbgm storage="ending.wav" volume="70" loop="false"]

;マスク
[wait time="200"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;tips
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[ptext name="title,line_spacing_large" layer ="2" text ="Van Gogh sold very few paintings</br>during his lifetime." size ="48" width="900" x ="30" y ="48" color ="black" face ="kei" align ="center"]

[html left="0" top="180"]
<div class="box_en">
<p>It is well known in Japan that Van Gogh sold very few paintings during his lifetime.</p>
<p>However, the famous story that "he only sold one painting during his lifetime" seems to be a slight exaggeration, and it is said that there is evidence that <span class="html_red">he actually sold several works, including drawings.</span></p>
<p>However, most of the works he sold have no photographs or other records remaining, and the only one that remains clearly recorded is an oil painting called <span class="html_red">"Red Vineyard."</span></p>
</div>
[endhtml]

;出典
[ptext name="title" layer ="2" text ="The Baltimore Sun “The van Gogh legend – a different picture The story that the artist sold just one painting in his lifetime endures. In fact, he sold at least two.”</br>https://www.baltimoresun.com/1998/10/25/the-van-gogh-legend-a-different-picture-the-story-that-the-artist-sold-just-one-painting-in-his-lifetime-endures-in-fact-he-sold-at-least-two/</br>Published: October 25, 1998 | Updated: September 28, 2021 | Accessed: November 8, 2025" size ="10" width="600" x ="100" y ="540" color ="black" align ="left" time="0"]

;マスクオフ
[mask_off time="200"]

[wait time="1000"]
[ptext name="title" layer ="2" text ="END" size ="50" width="800" x ="30" y ="550" color ="black" face ="kei" align ="right" time="500"]

[s]
