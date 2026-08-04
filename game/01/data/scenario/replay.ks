;=========================================
; 回想モード　画面作成
;=========================================
*start
@layopt layer=message0 visible=false
@clearfix
[hidemenubutton]
[cm]


[bg storage="../../tyrano/images/system/bg_base.png" time=100]
[layopt layer=1 visible=true]

[image name="label_replay" layer=1 left=0 top=0 storage="config/label_recollection.png" folder="image" ]

[iscript]

    f.page = 0;
    f.selected_replay_obj = ""; //選択されたリプレイを一時的に保管

[endscript]



*replaypage
[cm]
[button graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png"  target="*backtitle" x=1150 y=40 ]

[iscript]
	f.target_page = "page_"+f.page;
[endscript]

*replayview

@jump target=&f.target_page

*page_0
[replay_image_button name="replay1" graphic="cat.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=60 y=130 width=160 height=140 folder="bgimage" ]
[replay_image_button name="replay2" graphic="toile.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=260 y=130 width=160 height=140 folder="bgimage" ]


@jump target ="*common"


*common

[s]

*backtitle
[cm]
[freeimage layer=1]

[iscript]
f.system.flag_replay = false;
[endscript]

@jump storage=title.ks

*nextpage
[emb exp="f.page++;"]
@jump target="*replaypage"


*backpage
[emb exp="f.page--;"]
@jump target="*replaypage"

*clickcg
[cm]

[iscript]
    f.system.flag_replay = true;
[endscript]

[free layer=1 name="label_replay"]

@jump storage=&f.selected_replay_obj.storage target=&f.selected_replay_obj.target
[s]

*no_image

@jump  target=*replaypage
