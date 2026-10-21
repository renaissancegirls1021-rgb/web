fetch("./data/today_muse.json")
.then(res => res.json())
.then(museList => {

  const today = new Date();

  const seed =
  today.getFullYear() * 10000 +
  (today.getMonth() + 1) * 100 +
  today.getDate();

  const muse = museList[seed % museList.length];

//ボタン表示
const lang = document.documentElement.lang;

const isEnglish = lang === "en";

const url = isEnglish ? muse.en_url : muse.url;
const name = isEnglish ? muse.en_name : muse.name;
const title = isEnglish ? "Today's Muse!" : "今日のミューズ！";

document.getElementById("today-muse").innerHTML = `
<div class="today-card">
  <h2>${title}</h2>

  <a class="button hover ${muse.id}" href="${url}">
    <div class="slash">
      <div class="slash_2">
        <div class="slash_3"></div>
      </div>
    </div>

    <img src="${muse.image}">
    <div class="button_name">${name}</div>
  </a>

</div>
`;

});
