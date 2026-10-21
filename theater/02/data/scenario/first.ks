[title name="ルネサンスガールズ"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;デバッグフラグ
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;システム関連
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;音楽再生
[eval exp="f.debug_mute = true"]
[eval exp="f.debug_mute = false"]

;デフォ音量設定
[seopt volume="20"]
[bgmopt volume="20"]

[if exp ="f.debug_mute == true"]
[seopt volume="0"]
[bgmopt volume="0"]
[endif]

;英語版開発
[eval exp="f.en = true"]
;[eval exp="f.en= false"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;スマホ判定
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[iscript]
f.smartphone = /Android|iPhone|iPod|iPad/i.test(navigator.userAgent);
[endscript]

;スマホ
[eval exp="f.debug_smart = true"]
[eval exp="f.debug_smart = false"]

[if exp ="f.debug_smart == true"]
[eval exp="f.smartphone = true"]
[endif]

;スマホの時、デフォのフォントサイズを28に
[if exp ="f.smartphone == true"]
[deffont size="30"]
[endif]


;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;セーブデータ削除
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
/*
[iscript]
localStorage.clear();
[endscript]
*/

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;デフォルト設定
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;右下のメニューボタンを非表示にする
[hidemenubutton]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;preload中表示
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

[loading_log preload="now loading" dottime="500"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;タップしてスタート
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

[delay speed="5"]
[font size="40" bold="true" color="white"]
[nolog]
音が出ます！　クリックかタップしてスタート[r]
Sound will play!　Click or tap to start.[p]
[endnolog]
[resetfont]
[resetdelay]

[cm]
[layopt layer ="message0" visible ="false"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;言語選択
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

[layopt layer ="1" visible ="true"]
[ptext layer ="1"  text ="言語選択</br>Language Select" width="960" size ="40" x ="0" y ="100" color ="white" align="center"]

[glink color="op_start_btn" width="300" target="*jp" text="日本語" y="280"]
[glink color="op_start_btn" width="300" target="*en" text="English" y="400"]

[s]

*en
[eval exp="f.en = true"]
[jump target ="*next"]
[s]

*jp
[eval exp="f.en = false"]
[jump target ="*next"]
[s]

*next
[freeimage layer="1"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;プラグインとマクロ読み込み
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

[call target="*plugin"]
[call target="*macro"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;マウスカーソル設定
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[cursor storage="my_cursor.png"]
[cursor storage="my_cursor_hover.png" type="pointer"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;メッセージウィンドウ設定
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;デフォルトは会話用
[position layer="message0" left="16" top="448" width="936" height="184" frame="frame.png" margint="52" marginl="16" marginr="16" marginb="10" opacity="255" visible="false"]

;名前表示位置
[ptext name="chara_name_area" layer="message0" width="256" x="44" y="456" size="32" face="kei"]
[chara_config ptext="chara_name_area"]

[chara_config talk_focus="brightness" talk_anim="up" talk_anim_time="100" pos_change_time="300"]

;ポポポ音
[popopo volume="10" type="triangle"  time="100" frequency="G"]
;[popopo type="none"]

[if exp ="f.en == true"]
;英語版は10
[delay speed="10"]
[else]
;日本語版は30
[delay speed="30"]
[endif]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;スキップ、オートグリフ
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

[if exp ="f.en == true"]
[glyph_auto line="auto_disp_en.png" fix="true" left="-10" top="50" folder="image"]
[glyph_skip line="skip_disp_en.png" fix="true" left="-10" top="50" folder="image"]
[else]
[glyph_auto line="auto_disp.png" fix="true" left="-10" top="50" folder="image"]
[glyph_skip line="skip_disp.png" fix="true" left="-10" top="50" folder="image"]
[endif]
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;キャラ定義
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

;キャラデータロード
[call storage="chara_list.ks"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;プリロード
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[call storage="preload.ks"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;配列
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

[iscript]
f.tips_text = [];
[endscript]



;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;アニメ定義
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;アニメロード
[call storage="my_anime.ks"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;フォント読み込み
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[layopt layer ="1" visible ="true"]
[ptext name="title" layer ="1" text ="あ" size ="56" width="900" x ="30" y ="350" color ="black" face ="kei" align ="center" time="0"]
[wait time="1"]
[free layer="1" name="title"]
[layopt layer ="1" visible ="false"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;画面へ移動
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

;[jump storage ="sandbox.ks"]

;会話本文ページ
[if exp ="f.en == true"]
[jump storage ="main_en.ks"]
[else]
[jump storage ="main_jp.ks"]
[endif]

[s]


;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;マクロ読み込み
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
*macro
[call storage="macro.ks"]


[return]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;プラグイン読み込み
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
*plugin

;乱数プラグイン読み込み
[plugin name="intrandom"]

;ポポポ音プラグイン
[plugin name="popopo"]

;リロードボタン消すプラグイン
[plugin name="ReloadHide"]

;アニメプラグイン
[plugin name="kanimMacro"]

;漫符プラグイン
[plugin name="manpu"]

;tipsプラグイン
[plugin name="tooltip"]

[return]


[s]
