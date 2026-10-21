function goBack(){
  const params = new URLSearchParams(location.search);
  const from = params.get("from");

  if(from === "style"){
    location.href = "../style/style_list.html";
  }else if(from === "character"){
    location.href = "../character/list.html";
  }else{
    location.href = "../index.html";
  }
}
