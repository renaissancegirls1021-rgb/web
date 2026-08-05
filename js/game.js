console.log("game.js loaded");

const overlay = document.getElementById("overlay");
const frame = document.getElementById("game-frame");

document.querySelectorAll(".modal-link").forEach(link => {

    link.addEventListener("click", e => {

        e.preventDefault();

        frame.src = link.href;
        overlay.style.display = "flex";

    });

});

// 閉じる
document.getElementById("close").addEventListener("click", () => {

    frame.src = "";
    overlay.style.display = "none";

});

// 黒い部分クリックでも閉じる
overlay.addEventListener("click", e => {

    if(e.target === overlay){

        frame.src = "";
        overlay.style.display = "none";

    }

});
