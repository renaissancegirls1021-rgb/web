document.addEventListener("DOMContentLoaded", () => {

  const bg = document.getElementById("bg-palette");

  const COUNT = 30;

  for(let i=0;i<COUNT;i++){

    const p = document.createElement("div");
    p.className = "palette";

    const img = document.createElement("img");
    img.src = "./image/palette.svg";

    p.appendChild(img);

    // 横位置
    const isMobile = window.innerWidth <= 1280;

    if (isMobile) {
      // スマホ
      p.style.left = (0 + Math.random() * 100) + "%";
      p.classList.add("vertical");
    } else {
      // PC
      p.style.left = (-100 + Math.random() * 200) + "%";
      p.classList.add("diagonal");
    }

    // 縦位置
    p.style.bottom = (-100 - Math.random() * 300) + "px";

    // サイズ
    const size = isMobile
      ? 100 + Math.random() * 100  // スマホ
      : 80 + Math.random() * 80;  // PC

    p.style.width = size + "px";
    p.style.height = size + "px";

    // 初期角度
    p.style.setProperty(
      "--rotate",
      Math.random()*360 + "deg"
    );

    // アニメ時間
    p.style.animationDuration =
      (30 + Math.random()*15) + "s";

    // 開始タイミングをずらす
    p.style.animationDelay =
      (-Math.random()*30) + "s";

    bg.appendChild(p);
  }

});
