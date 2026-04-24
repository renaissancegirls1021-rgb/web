document.addEventListener("DOMContentLoaded", () => {

  fetch("include/buttons_jp.html")
    .then(res => res.text())
    .then(data => {

      const container = document.getElementById("muse_list");
      container.innerHTML = data;

      // ★ここが超重要
      sortItems("default");
    })
    .catch(err => console.error(err));

});
