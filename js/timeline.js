
document.querySelectorAll(".timeline").forEach(timeline => {

  const start = Number(timeline.dataset.start);
  const end = Number(timeline.dataset.end);

  const range = end - start;

  /* =======================
     ピン配置
  ======================= */

  timeline.querySelectorAll(".pin").forEach(pin => {

    const year = Number(pin.dataset.year);

    const ratio = (year - start) / range;

    pin.style.left = `${ratio * 100}%`;

  });

  /* =======================
     世紀ラベル生成
  ======================= */

  const labels = timeline.querySelector(".century_labels");

  const startCentury = Math.floor(start / 100);
  const endCentury = Math.floor(end / 100);

  for(let c = startCentury; c <= endCentury; c++){

    const span = document.createElement("span");

    span.textContent = c + 1 + "c";

    labels.appendChild(span);

  }

});
