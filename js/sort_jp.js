// ===============================
// ソート本体（グローバル）
// ===============================
function sortItems(type) {

  const container  = document.getElementById("muse_list");
  const items = Array.from(container.querySelectorAll("a.button"));

  // 既存見出し削除
  container.querySelectorAll(".style-heading").forEach(h => h.remove());

  // ===============================
  // 並び替え
  // ===============================
  items.sort((a, b) => {

    switch (type) {

      case "name-asc":
        return a.dataset.name.localeCompare(b.dataset.name);

      case "name-desc":
        return b.dataset.name.localeCompare(a.dataset.name);

      case "born-asc":
        return (
          Number(a.dataset.born) - Number(b.dataset.born) ||
          a.dataset.born.localeCompare(b.dataset.born)
        );

      case "born-desc":
        return (
          Number(b.dataset.born) - Number(a.dataset.born) ||
          a.dataset.born.localeCompare(b.dataset.born)
        );

      case "style-asc":
        return (
          a.dataset.style.localeCompare(b.dataset.style) ||
          a.dataset.name.localeCompare(b.dataset.name)
        );

      case "style-desc":
        return (
          b.dataset.style.localeCompare(a.dataset.style) ||
          a.dataset.name.localeCompare(b.dataset.name)
        );

      case "default":
      default:
        return Number(a.dataset.order) - Number(b.dataset.order);
    }
  });

  // 再描画準備
  container.innerHTML = "";

  // ===============================
  // 様式ソート
  // ===============================
  if (type === "style-asc" || type === "style-desc") {

    container.classList.add("style-mode");

    let currentKey = null;
    let gridDiv    = null;

    items.forEach(item => {

      const styleName = item.dataset.style_name;

      if (styleName !== currentKey) {
        currentKey = styleName;

        const heading = document.createElement("div");
        heading.className = "style-heading";
        heading.textContent = styleName;
        container.appendChild(heading);

        gridDiv = document.createElement("div");
        gridDiv.className = "style-grid";
        container.appendChild(gridDiv);
      }

      gridDiv.appendChild(item);
    });

    return;
  }

  // ===============================
  // 誕生年ソート
  // ===============================
  if (type === "born-asc" || type === "born-desc") {

    container.classList.add("style-mode");

    let currentKey = null;
    let gridDiv    = null;

    items.forEach(item => {

      const era = item.dataset.born_era;

      if (era !== currentKey) {
        currentKey = era;

        const heading = document.createElement("div");
        heading.className = "style-heading";
        heading.innerHTML =
          "<span class='year-number'>" + era + "</span>";

        container.appendChild(heading);

        gridDiv = document.createElement("div");
        gridDiv.className = "style-grid";
        container.appendChild(gridDiv);
      }

      gridDiv.appendChild(item);
    });

    return;
  }

  // ===============================
  // 通常ソート
  // ===============================
  container.classList.remove("style-mode");
  items.forEach(item => container.appendChild(item));
}


// ===============================
// セレクト変更イベント
// ===============================
document.addEventListener("DOMContentLoaded", () => {
  const sortSelect = document.getElementById("sortSelect");

  sortSelect.addEventListener("change", function () {
    sortItems(this.value);
  });
});


// ===============================
// ページ復帰時
// ===============================
window.addEventListener("pageshow", () => {
  const sortSelect = document.getElementById("sortSelect");
  sortSelect.value = "default";

  const event = new Event("change");
  sortSelect.dispatchEvent(event);
});
