window.addEventListener("DOMContentLoaded", () => {

  const lang = location.pathname.includes("_jp") ? "jp" : "en";
  const current = document.body.classList[0];

  fetch("../data/relate.json")
    .then(res => res.json())
    .then(data => {
      const container = document.getElementById("relate");
      if (!container) return;

      const characters = data.characters;
      const groups = data.relations[current]?.groups;

      if (!groups) return;

      groups.forEach(group => {
        let buttonsHTML = "";

        group.characters.forEach(ch => {
          const c = characters[ch.id];
          if (!c) return;

          buttonsHTML += `
            <a class="button hover ${ch.id}" href="${ch.id}_${lang}.html">
              <img src="${c.image}" alt="${c.name[lang]}">
              <div class="button_name">${c.name[lang]}</div>
            </a>
          `;
        });

        const message = group.characters[0]?.message?.[lang] || "";

        container.innerHTML += `
          <div class="relate_block">
            <div class="relate_group">${buttonsHTML}</div>
            <div class="relate_message">
              <img src="../x_image/x_${current}.png">
              <p>${message}</p>
            </div>
          </div>
        `;
      });

    });

});
