const name = document.body.classList[0];

// 画像パス生成
const paths = {
  style_top: `../style_top_image/${name}_t.png`,
    style_works: `../style_works_image/${name}_w.png`

};

// 画像に適用
document.querySelector('.img-style_top').src = paths.style_top;
document.querySelector('.img-style_work').src = paths.style_works;

// Twitterカードも変更（重要）
const twitterImg = document.querySelector('meta[name="twitter:image"]');
if (twitterImg) {
  twitterImg.content = `https://renaissancegirls1021-rgb.github.io/web/x_image/${name}_x.png`;
}
