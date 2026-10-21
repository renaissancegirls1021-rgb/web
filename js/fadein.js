document.addEventListener('DOMContentLoaded', () => {

  const setupImage = (img) => {

    const showImage = () => {
      img.classList.add('loaded');
    };

    // すでに読み込み済み
    if (img.complete && img.naturalWidth > 0) {
      showImage();
    }

    // load時
    img.addEventListener('load', showImage);

  };

  const imgs = document.querySelectorAll('.img-muse, .img-style_top');

  imgs.forEach(img => {

    setupImage(img);

    // src変更監視
    const observer = new MutationObserver(() => {
      if (img.complete && img.naturalWidth > 0) {
        img.classList.add('loaded');
      }
    });

    observer.observe(img, {
      attributes: true,
      attributeFilter: ['src']
    });

  });

});
