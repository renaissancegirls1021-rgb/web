document.addEventListener('DOMContentLoaded', () => {
  const imgs = document.querySelectorAll('.img-muse, .img-style_top');

  imgs.forEach(img => {
    if (img.complete) {
      img.classList.add('loaded');
    } else {
      img.addEventListener('load', () => {
        img.classList.add('loaded');
      });
    }
  });
});
