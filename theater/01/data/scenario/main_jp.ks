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
[eval exp="f.tips_text[0] = 'ゴッホの代表作。うねるように渦巻く青い星空が特徴的。'"]
[eval exp="f.tips_text[1] = 'ゴッホは神父だった父の影響もありキリスト教の宣教師を目指していたが、途中で挫折した。'"]

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
[ptext name="title" layer ="1" text ="第 1 話" size ="48" width="900" x ="30" y ="260" color ="black" face ="kei" align ="center" page="back" time="0"]
[ptext name="title" layer ="1" text ="ゴッホちゃんはチヤホヤされたい" size ="56" width="900" x ="30" y ="350" color ="black" face ="kei" align ="center" page="back" time="0"]

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
げそぉ～～～っ。[p]

;キャラ表示
[chara_show layer="1"  name="rembrandt" face="komari" time="100" top="&f.rembrandt_top"]

#rembrandt
あらら。[r]
どうしたのゴッホ、 [text_tips text="星月夜" no="0"]より青い顔して。[p]

[chara_mod name="gogh" face="cry2" time="0" cross="false"]

#gogh
あっ。レンちゃんセンパイ。[r]
聞いて下さいよォ～。[p]

最近、SNSを見れば右も左も[r]
絵が上手い人ばっかりじゃないスか。[p]

かたや、自分は絵がサッパリ売れず、[r]
今日のゴハンにも困るありさま……。[p]

[playse storage="bomb.mp3"]
;振動
[start_wiggle name="gogh"]

[kei text="……自分だって……"][r]
[kei text="チヤホヤされた～～～～い……ッス！"][p]

[chara_mod name="rembrandt" face="shirake" time="0" cross="false"]

[manpu layer="1" name="rembrandt" type="ase" x="-10"]

#rembrandt
うわぁ、心配したのを後悔するくらいしょうもない！[p]

;振動終わり
[stop_wiggle name="gogh"]

[manpu layer="1" name="gogh" type="ase2" x="20" y="90"]

#gogh
ぴえ～んっ！[r]
追い打ちかけるのやめてくださいっ！[p]

レンちゃんセンパイ、なんかいいアイデアないスかっ！[r]
みんなが、[strong text="自分の方を見てくれるアイデア"]はっ！[p]

#rembrandt
それが簡単にできたら、[r]
芸術家は苦労しないよ……。[p]

[chara_mod name="rembrandt" face="komari" time="0" cross="false"]

でも、トモダチとして[r]
なんとかしてあげたいなぁ。[p]

[chara_mod name="rembrandt" face="normal" time="0" cross="false"]

[manpu layer="1" name="rembrandt" type="pikon"]

#rembrandt
……そうだ！[r]
今流行りの[strong text="「アレ」"]やってみればいいんじゃない？[p]

#gogh
……「アレ」？[p]

;シーンチェンジ
[scene_change]

;キャラ表示
[chara_show layer="1"  name="michelangelo" face="normal" time="100" top="&f.michelangelo_top"]

#michelangelo
おい、レンブラント。[r]
最近ゴッホのやつを見なかったか？[p]

;キャラ表示
[chara_show layer="1"  name="rembrandt" face="shirake" time="100" top="&f.rembrandt_top"]

#rembrandt
あぁ、ミケランジェロ。[r]
そうか、キミはSNSとかやってないんだっけ。[p]

……あいつ、手早くチヤホヤされたいって言うから、[r]
[strong text="Youtubeの、お絵かき講座配信"]を勧めてみたんだよね。[p]

#michelangelo
ほう。たしか、ゴッホって[text_tips text="宣教師" no="1"]を目指してたんだよな？[r]
教えるのは得意そうなもんだが。[p]

#rembrandt
それが……[r]
なんか、ヘンな受け取り方をしちゃったみたいでね。[p]

;シーンチェンジ
[scene_change bg="youtube.png" bgm="oikakekko.mp3"]

;キャラ表示
[chara_show layer="1"  name="gogh" face="normal" time="100" top="&f.gogh_top"]

#gogh
[kei text="はろはろー、ユーチューブゥ！"][r]
[kei text="ゴッホちゃんでーっす！"][p]

今日は、[strong text="「これをやる絵師は絶ッッッ対に成功しない！"][r]
[strong text="今すぐやめるべき絵の習慣」"]をご紹介します！[p]

[chara_mod name="gogh" face="smile" time="0" cross="false"]

ひとつでも当てはまった方は、以下のURLをクリック！[r]
お役立ち資料を[strong text="良心価格で"]ご提供しまッス！[p]

[playse storage="kira.mp3" volume="100"]
;ジャンプ
[kanim keyframe="jump" name="gogh" time="200" count="2"]
さらに、[strong text="会員限定のDiscordサーバー"]で有益情報をシェア！[r]
みんなも鬼努力して神絵師になりましょ～～～～っ！[p]


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

[kei text="……情報商材屋じゃねーか！"][p]

#rembrandt
しかも本人、売れてないからね。絵。[p]

[strong text="信じられないくらい炎上"]して、チャンネル消して[r]
フランスへ自分探しの旅に出たそうだよ。[p]

[playse storage="bishi.mp3" volume="100"]

;振動
[start_wiggle name="michelangelo"]
#michelangelo
[kei text="そのまま帰ってくるなァーッ！" red="true"][p]

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

[ptext name="title,line_spacing_large" layer ="2" text ="ゴッホは生前、</br>絵がほとんど売れなかった。" size ="48" width="900" x ="30" y ="48" color ="black" face ="kei" align ="center"]

[html left="0" top="180"]
<div class="box">
<p>ゴッホは生前、絵がほとんど売れなかった……というエピソードは日本でもよく知られています。</p>
<p>とはいえ「生前に売れたのは1枚だけ」という有名な話もやや誇張があるようで、実際には<span class="html_red">デッサンを含む数点が売れた形跡がある</span>といわれています。</p>
<p>ただし売れた作品のほとんどは写真などの記録が残っておらず、唯一はっきりと記録が残っているのが<span class="html_red">「赤いブドウ畑」</span>という油絵です。</p>
</div>
[endhtml]

;出典
[ptext name="title" layer ="2" text ="The Baltimore Sun “The van Gogh legend – a different picture The story that the artist sold just one painting in his lifetime endures. In fact, he sold at least two.”</br>https://www.baltimoresun.com/1998/10/25/the-van-gogh-legend-a-different-picture-the-story-that-the-artist-sold-just-one-painting-in-his-lifetime-endures-in-fact-he-sold-at-least-two/</br>公開：1998.10.25｜更新：2021.9.28｜参照日：2025.11.8" size ="10" width="600" x ="100" y ="540" color ="black" align ="left" time="0"]

;マスクオフ
[mask_off time="200"]

[wait time="1000"]
[ptext name="title" layer ="2" text ="END" size ="50" width="800" x ="30" y ="550" color ="black" face ="kei" align ="right" time="500"]

[s]
