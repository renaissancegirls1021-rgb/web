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
[eval exp="f.tips_text[0] = 'チューブ入り絵の具が発明されたのは19世紀なかば。それまでは豚の膀胱で作った袋や金属製の注射器に絵の具を入れて持ち運んでいた。'"]
[eval exp="f.tips_text[1] = 'レンブラントは大変な浪費家で知られ、美術品や物件を買い漁った結果、かなりの貧困に苦しんだ。'"]

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
[ptext name="title" layer ="1" text ="第２話" size ="48" width="900" x ="30" y ="260" color ="black" face ="kei" align ="center" page="back" time="0"]
[ptext name="title" layer ="1" text ="モネのほしいもの" size ="56" width="900" x ="30" y ="350" color ="black" face ="kei" align ="center" page="back" time="0"]

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
ふんふ～ん♫[p]

;キャラ表示
[chara_show layer="1"  name="monet" face="normal" time="100" top="&f.monet_top"]

#monet
あら、レンブラントちゃん。[r]
かわいい指輪ね。どうしたの？[p]

#rembrandt
へっへ～、いいでしょいいでしょ。[r]
こないだ[strong text="「通販」"]で買ったんだ！[p]

[chara_mod name="monet" face="odoroki" time="0" cross="false"]

#monet
つうはん……？[r]
変わった名前のお店やさんね。[p]

[chara_mod name="rembrandt" face="shirake" time="0" cross="false"]

[manpu layer="1" name="rembrandt" type="mojamoja" x="0" y="0"]

#rembrandt
ちがうよ、通販だよ！[r]
通信販売のこと！[p]

[chara_mod name="rembrandt" face="normal" time="0" cross="false"]

#rembrandt
今はスマホでポチッとやれば、[r]
なんでも買えるんだよ！[p]

[chara_mod name="rembrandt" face="shirake" time="0" cross="false"]

（便利すぎて、[r]
今月、 [text_tips text="おサイフがちょっとピンチ" no="1"]だけど……）[p]

[chara_mod name="rembrandt" face="normal" time="0" cross="false"]

#monet
あらあら。いつのまにか、[r]
そんなに便利になっていたのね。[p]

[chara_mod name="monet" face="normal" time="0" cross="false"]

#monet
昔は、 [text_tips text="絵の具一つ持ち歩くのも大変だった" no="0"]のに。[r]
うふふ。[p]

#rembrandt
モネもなんか買ってみなよ。[r]
アカウントの作り方、教えてあげるからさ。[p]

[chara_mod name="monet" face="smile" time="0" cross="false"]

#monet
ありがとうね、レンブラントちゃん。[p]

[chara_mod name="monet" face="normal" time="0" cross="false"]

#monet
そういえば、前からほしいと思ってたものがあるのよ。[r]
この「つうはん」では、どんなものが買えるのかしら？[p]

#rembrandt
いろいろだよ！　食べ物から電化製品、[r]
画材とか絵画だって買えるんだ。[p]

#rembrandt
モネがほしいものって、どんなの？[p]


#monet
そうねぇ。たとえば……。[p]

[bg storage="donyori.png" time="100"]

[chara_mod name="rembrandt" face="scary" time="0" cross="false"]
[chara_mod name="monet" face="black" time="0" cross="false"]

[playbgm storage="horror.mp3" volume="20"]

[strong text="火炎放射器"]、とかかしら。[p]

#monet
最近、庭に変な虫の巣ができちゃって、[r]
困ってるのよねぇ。[p]

#monet
だから威力が強い火炎放射器を探してるんだけど、[r]
なかなか、お店やさんには売ってなくて……。[p]

……そういうのも、売ってるのよね？[p]

#rembrandt
………………。[p]

[bg storage="atelier.png" time="100"]

[playbgm storage="nonbiri.mp3"]

[chara_mod name="rembrandt" face="normal" time="0" cross="false"]

[manpu layer="1" name="rembrandt" type="ase2" x="0" y="0"]

#rembrandt
……ごめん！ちょっと用事を思い出したよ！[r]
また今度ね！[p]

[chara_mod name="monet" face="normal" time="0" cross="false"]

#monet
あら！　それじゃあまた今度、お願いしようかしら。[r]
忙しい所、ごめんなさいね。[p]

;キャラ全部消す
[chara_hide layer="1" time="100" name="monet"]

[wait time="500"]

;振動
[start_wiggle name="rembrandt"]

[chara_mod name="rembrandt" face="scary" time="0" cross="false"]

#rembrandt
……あんなのに通販なんか教えたら、[r]
大変なことになるぞ……！[p]

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

[ptext name="title,line_spacing_large" layer ="2" text ="モネは、</br>庭いじりが趣味だった。" size ="48" width="900" x ="30" y ="48" color ="black" face ="kei" align ="center"]

[html left="0" top="180"]
<div class="box">
<p>モネは生涯の半分を過ごしたフランス・ジヴェルニーの家に<span class="html_red">大きな庭園</span>を作り、沢山の植物を育てていました。</p>
<p>面積は実に1万平方メートル以上。ワールドカップのサッカーコート2枚分程度にあたり、代表作のモチーフとなった<span class="html_red">睡蓮</span>を始め、世界中から集められた数千種類の植物が植えられていました。もちろん一人で手入れはできないので、庭師を数人雇っていたとか。庭に咲き誇る花や輝く池は、モネのインスピレーションの源となったのです。</p>
[endhtml]

;出典
[ptext name="title" layer ="2" text ="北川村「モネの庭」マルモッタン</br>https://www.kjmonet.jp/about/</br>参照日：2025.12.18" size ="16" width="600" x ="100" y ="540" color ="black" align ="left" time="0"]

;マスクオフ
[mask_off time="200"]

[wait time="1000"]
[ptext name="title" layer ="2" text ="END" size ="50" width="800" x ="30" y ="550" color ="black" face ="kei" align ="right" time="500"]

[s]
