const name = document.body.className; // "rembrandt"

// 画像パス生成
const paths = {
  muse: `../muse_image/${name}.png`,
  work: `../works_image/${name}_w.png`,
  artist: `../artist_image/${name}_a.png`,
  x: `../x_image/${name}_x.png`
};

// 画像に適用
document.querySelector('.img-muse').src = paths.muse;
document.querySelector('.img-work').src = paths.work;
document.querySelector('.img-artist').src = paths.artist;

// Twitterカードも変更（重要）
const twitterImg = document.querySelector('meta[name="twitter:image"]');
if (twitterImg) {
  twitterImg.content = `https://renaissancegirls1021-rgb.github.io/web/x_image/${name}_x.png`;
}
