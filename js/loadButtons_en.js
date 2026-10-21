document.addEventListener("DOMContentLoaded", () => {

  fetch("include/buttons_en.html")
    .then(res => res.text())
    .then(data => {

      const container = document.getElementById("muse_list");
      container.innerHTML = data;

      // ★ここで初期ソート
      sortItems("default");
    })
    .catch(err => console.error(err));

});
