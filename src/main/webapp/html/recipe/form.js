"use strict";

var fiFile = document.querySelector('#fiFile'), 
    fiRecipeNo = document.querySelector('#fiRecipeNo'),
    fiTitle = document.querySelector('#fiTitle'),
    fiContent = document.querySelector('#fiContent'),
    fiCategory = document.querySelector('#fiCategory'),
    fiOtherInfo = document.querySelector('#fiOtherInfo'),
    staticViewCount = document.querySelector('#staticViewCount'),
    fiMemberNo = document.querySelector('#fiMemberNo'),
    fiTag = document.querySelector('#fiTage'),
    btnAdd = document.querySelector('#btnAdd'),
    btnUpdate = document.querySelector('#btnUpdate'),
    btnDelete = document.querySelector('#btnDelete'),
    btnList = document.querySelector('#btnList');
    
var i = location.href.indexOf('?');
if (i != -1) {
  var str = location.href.substring(i + 1).split('=');
  if (str[0] == 'recipeNo') {
    if (!isNaN(parseInt(str[1])))
      var recipeNo = parseInt(str[1]);
    else 
        swal('게시물 조회!', '게시물 번호가 유효하지 않습니다!', 'error');
  }
}
    

btnList.click(() => {
	  location.href = 'list.html';
	});

if (recipeNo == undefined) {
	var el = document.querySelectorAll('.my-view-group')
	for (var e of el) {
		e.style['display'] = 'none';
	}
	
	btnAdd.onclick = () => {
		doAdd();
	};
	
} else {
	var el = document.querySelectorAll('.my-view-group')
	for (var e of el){
		e.style['display'] = 'none';
	}
	doDetail();
	
	btnUpdate.onclick = () => {
		doUpdate();
	}
	
	btnDelete.onclick = () => {
		doDelte();
	}
}

function doAdd() {
	console.log("doAdd")
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = () => {
		if (xhr.readyState < 4)
			return;
		
		if (xhr.status !=200) {
			alert("서버 요청 중 오류 발생!");
			return;
		}

		var data = JSON.parse(xhr.responseText);
		console.log(data.state);
		
		location.href = "list.html";
	};
	
	xhr.open("POST", "/app/json/recipe/add", true);
	xhr.setRequestHeader(
			"Content-Type",
			"application/x-www-form-urlencoded");
	xhr.send(
			"file=" + encodedURIComponent(fiFile.value) +
			"&recipeNo=" + encodedURIComponent(fiRecipeNo.value) +
			"&title=" + encodedURIComponent(fiTitle.value) +
			"&content=" + encodeURIComponent(fiContent.value) +
			"&category=" + encodeURIComponent(fiCategory.value) +
			"&otherInfo=" + encodeURIComponent(fiOtherInfo.value) +
			"&memberNo=" + encodeURIComponent(fiMemberNo.value) +
			"&tag=" + encodeURIComponent(fiTag.value));
}

function doDetail() {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = () => {
		if (xhr.readyState < 4)
		   return;
		    
	  if (xhr.status != 200) {
		   alert("서버 요청 중 오류 발생!");
		   return;
	  }
	  
	  var data = JSON.parse(xhr.responseText);
	  fiTitle.value = data.result.recipeNo;
	  fiContent.value = data.result.content;
	  staticViewCount.value = data.result.viewCount;
	  staticCreatedDate.value = data.result.createdDate;
	};
	xhr.open("GET", "/app/json/recipe/detail?no=" + no, true);
	xhr.send();
}

function doUpdate() {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = () => {
		if (xhr.readyState < 4)
			return;
		
		if (xhr.status !=200) {
			alert("서버 요청 중 오류 발생");
			return;
		}
		
		var data = JSON.parse(xhr.responseText);
		console.log(data.state);
		
		location.href = "list.html";
	};
	
	xhr.open("POST", "/app/json/recipe/update", true);
	xhr.setREquestHeader(
			"Content-Type",
			"application/x-www-form-urlencoded");
	xhr.send(
			"title=" + encodedURIComponent(fiTitle.value) +
			"&content=" + encodedURIComponent(fiContent.value) +
			"&viewCount=" + fiViewCount.value +
			"&createdDate=" + fiCreatedDate.value +
			"&otherInfo=" + encodedURIComponent(fiOhterInfo.value) +
			"&recipeNo=" + fiRecipeNo.value +
			"&tag=" + encodedURIComponent(fiTag.value));
}

function doDelete() {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = () => {
		if (xhr.readyState < 4)
			return;
		
		if (xhr.status !=200) {
			alert("서버 요청 중 오류 발생!");
			return;
		}
		
		var data = JSON.parse(xhr.responseTest);
		console.log(data.state);
		
		location.href = "list.html";
	};
	
	xhr.open("GET", "/app/json/recipe/delete?no=" + no, true);
	xhr.send();
}