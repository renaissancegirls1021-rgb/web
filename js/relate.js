const current = document.body.classList[0];
const lang = location.pathname.includes("_jp") ? "jp" : "en";

fetch("../data/relate.json")
  .then(res => res.json())
  .then(data => {

    const container = document.getElementById("relate");
    const characters = data.characters;
    const groups = data.relations[current]?.groups;

    if (!groups || !container) return;

    groups.forEach(group => {

      let buttonsHTML = "";

      group.characters.forEach(ch => {
        const c = characters[ch.id];

        if (!c || !c.published) return; // ←これ追加

        buttonsHTML += `
          <a class="button ${ch.id}" href="${ch.id}_${lang}.html">
            <img src="../muse_button_image/${ch.id}_b.png">
            <div class="button_name">${c.name[lang]}</div>
          </a>
        `;
      });

      const message = group.characters[0]?.message?.[lang] || "";

      container.innerHTML += `
        <div class="relate_block">
          <div class="relate_group">
            ${buttonsHTML}
          </div>
          <div class="relate_message">
            <img src="../face_image/${current}_f.png">
            <p>${message}</p>
          </div>
        </div>
      `;
    });

  });
