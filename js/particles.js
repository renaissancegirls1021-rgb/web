document.addEventListener("DOMContentLoaded", () => {
  const container = document.querySelector(".bg-particles");
  const COUNT = 15;

  for (let i = 0; i < COUNT; i++) {
    const wrapper = document.createElement("div");
    wrapper.className = "particle";

    const img = document.createElement("img");
    img.src = "../image/palette.svg";

    // 横位置
    wrapper.style.left = Math.random() * 100 + "vw";

    // サイズ
const size = 100 + Math.random() * 100;
    wrapper.style.width = size + "px";
    wrapper.style.height = size + "px";

    // 上昇速度
const riseDuration = 20 + Math.random() * 40;
    wrapper.style.animationDuration = `${riseDuration}s`;

    // 回転速度
    const spinDuration = 50 + Math.random() * 20;
    img.style.animationDuration = `${spinDuration}s`;

    // 遅延
    wrapper.style.animationDelay = `${Math.random() * -40}s`;

    wrapper.appendChild(img);
    container.appendChild(wrapper);
  }
});
