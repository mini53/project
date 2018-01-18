var control = ""; //모든 페이지의 스크립트를 호출할 때 사용

//bcode와 함께 주소줄(url)에 넘어오는 애들
function moveWrite(bcode) {//code를 받아서 
	document.getElementById("bcode").value = bcode;
	document.getElementById("pg").value = "1";
	document.getElementById("key").value = "";
	document.getElementById("word").value = "";
	
	document.getElementById("commonForm").action = root + control + "/write.playdata";
	document.getElementById("commonForm").submit();
}

//bcode=9&pg=1&key=&word=
function listArticle(bcode, pg, key, word) {
	document.getElementById("bcode").value = bcode;
	document.getElementById("pg").value = pg;
	document.getElementById("key").value = key;
	document.getElementById("word").value = word;
	
	document.getElementById("commonForm").action = root + control + "/list.playdata";
	document.getElementById("commonForm").submit();//여기서 submit을 해줘야된다 22라인
}//submit요청: 위의 commonform에 있는 모든 데이터를 action이 가리키는 모든 url로 값을 전송 

function viewArticle(bcode, pg, key, word, seq) {
	document.getElementById("bcode").value = bcode;
	document.getElementById("pg").value = pg;
	document.getElementById("key").value = key;
	document.getElementById("word").value = word;
	document.getElementById("seq").value = seq;
	
	document.getElementById("commonForm").action = root + control + "/view.playdata";
	document.getElementById("commonForm").submit();
}