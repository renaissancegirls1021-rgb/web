;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;キャラ登場　[c_show name="" face=""]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[macro name="c_show"]

;高さを作成
[eval exp="tf.top = f[mp.name + '_top']"]
[chara_show layer="1"  name="&mp.name" face="&mp.face" time="100" top="&tf.top"]
[endmacro]


;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;キャラ退場　[c_hide name=""]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[macro name="c_hide"]
[chara_hide layer="1" time="100" name="&mp.name"]
[endmacro]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;キャラ表情変化　[c_face name="" face=""]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[macro name="c_face"]
[chara_mod name="&mp.name" face="&mp.face" time="0" cross="false"]
[endmacro]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;発話者を最前面に　[say name=""]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[macro name="say"]
;漫符をリセット
[manpu_reset]
;話者を最前面に
[depth_mod layer=1 name="&mp.name" depth="front" ]
#&mp.name
[endmacro]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;漫符表示　[man name="" type="" pos=""]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[macro name="man"]

[if exp ="mp.pos == 'right'"]
[eval exp="f.man_x = 200"]
[elsif exp ="mp.pos == 'left'"]
[eval exp="f.man_x = -50"]
[elsif exp ="mp.pos == 'center'"]
[eval exp="f.man_x = 0"]
[else]
[eval exp="f.man_x = 200"]
[endif]

[manpu layer="1" name="&mp.name" type="&mp.type" x="&f.man_x" y="0"]
[endmacro]

/*
汗 | ase
アセアセ | ase2
びっくり | bikkuri
！？ | bikkuri2
ふきだし | fukidashi
ふきだしモワモワ | fukidashi2
ガーン！ | gaan
ハテナ | hatena
ハート | heart
割れハート | heart2
ラブラブ | heart3
キラン | kiran
モジャモジャ | mojamoja
怒り | muka
ムカムカ | muka2
波 | nami
イライラ | nami2
気づき | nanto
ごきげん音符 | onpu
おや！ | oya
ひらめき | pikon
ためいき | tameiki
わいわい | waiwai
*/
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;シーンチェンジ　[scene_change bg="" bgm="" chara_save=""]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[macro name="scene_change"]
;マスク
[mask time="200"]

;文章消す
#
[cm]

;キャラ全部消す
[chara_hide_all layer="1" time="0" wait="true"]

;背景が指定されている時、変える
[if exp ="mp.bg != undefined"]
[bg storage="&mp.bg" time="0"]
[endif]

[if exp ="mp.bgm != undefined"]
;音楽が指定されている時、変える
[playbgm storage="&mp.bgm" volume="25"]
[endif]

;[wait time = ""]
[wait time="200"]
;マスクオフ
[mask_off time="200"]
[endmacro]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;TIPS [text_tips text="" no=""]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[macro name="text_tips"]
[font color="blue" italic="true"]
[tooltip desc="&f.tips_text[mp.no]"]
[emb exp="mp.text"]
[end_tooltip]
[resetfont]
[endmacro]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;文字を強調 [strong text=""]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[macro name="strong"]
[font bold="true" color="red"]
[emb exp="mp.text"]
[resetfont]
[endmacro]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;文字をデカ文字で強調 [kei text="" red=""]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[macro name="kei"]
[font size="40" face="kei"]

;赤い文字
[if exp ="mp.red != undefined"]
[font color="red"]
[endif]

[emb exp="mp.text"]
[resetfont]
[endmacro]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;ジャンプ
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[return]
