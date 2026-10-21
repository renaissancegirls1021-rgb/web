document.addEventListener("DOMContentLoaded", async () => {
    try {
        // =============================
        // JSONを読み込む
        // =============================

        const response = await fetch("../data/muse_order.json");

        if (!response.ok) {
            throw new Error(
                `JSONの読み込みに失敗しました: ${response.status}`
            );
        }

        const museList = await response.json();


        // =============================
        // 現在のページ情報を取得
        // =============================

        // 現在のページのファイル名を取得
        // 例：gogh_jp.html
        const fileName = window.location.pathname
            .split("/")
            .pop();

        // <html lang="ja"> / <html lang="en"> を取得
        const lang = document.documentElement.lang;

        // 言語によってファイル名を切り替える
        const suffix = lang.startsWith("en")
            ? "_en.html"
            : "_jp.html";


        // =============================
        // 現在のキャラクターIDを取得
        // =============================

        // gogh_jp.html → gogh
        // gogh_en.html → gogh
        const currentId = fileName.replace(suffix, "");


        // =============================
        // 現在のキャラクターの位置を取得
        // =============================

        const currentIndex = museList.findIndex(
            muse => muse.id === currentId
        );

        if (currentIndex === -1) {
            console.warn(
                `muse_order.jsonに「${currentId}」が見つかりません。`
            );
            return;
        }


        // =============================
        // 前後のキャラクターを取得
        // =============================

        // 一つ前
        // 先頭の場合は最後へ
        const prevIndex =
            (currentIndex - 1 + museList.length)
            % museList.length;

        // 一つ次
        // 最後の場合は先頭へ
        const nextIndex =
            (currentIndex + 1)
            % museList.length;


        const prevMuse = museList[prevIndex];
        const nextMuse = museList[nextIndex];


        // =============================
        // 遷移先URLを作る
        // =============================

        const prevUrl = `${prevMuse.id}${suffix}`;
        const nextUrl = `${nextMuse.id}${suffix}`;


        // =============================
        // PC・スマホ両方のボタンを取得
        // =============================

        const prevButtons = document.querySelectorAll(
            ".muse-nav-prev"
        );

        const nextButtons = document.querySelectorAll(
            ".muse-nav-next"
        );


        // =============================
        // 前へボタンにリンクを設定
        // =============================

        prevButtons.forEach(button => {
            button.href = prevUrl;
        });


        // =============================
        // 次へボタンにリンクを設定
        // =============================

        nextButtons.forEach(button => {
            button.href = nextUrl;
        });


        // =============================
        // 確認用ログ
        // =============================

        console.log("現在のページ:", fileName);
        console.log("言語:", lang);
        console.log("現在のID:", currentId);
        console.log("一つ前:", prevMuse.id);
        console.log("一つ前URL:", prevUrl);
        console.log("ひとつ次:", nextMuse.id);
        console.log("ひとつ次URL:", nextUrl);

    } catch (error) {
        console.error(
            "ページ遷移ナビゲーションエラー:",
            error
        );
    }
});
