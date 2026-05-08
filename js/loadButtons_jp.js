document.addEventListener("DOMContentLoaded", () => {

  fetch("include/buttons_jp.html")
    .then(res => res.text())
    .then(data => {

      const container = document.getElementById("muse_list");
      container.innerHTML = data;

      // デフォルトに戻す
      sortItems("default");
    })
    .catch(err => console.error(err));

});
