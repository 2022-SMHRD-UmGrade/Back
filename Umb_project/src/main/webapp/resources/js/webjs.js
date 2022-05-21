
function getContextPath(){
   var hostIndex = location.href.indexOf(location.host)+location.host.length;
   var contextPath = location.href.substring(hostIndex, location.href.indexOf("/", hostIndex+1))
   return contextPath
}


/*User 관련*/
function userList(){
	$.ajax({
		url :  getContextPath()+"/userList.do",
		type : "get",
		dataType : "json",
		success : userList1,
		error : function(){
			alert("error")
		}
	})
}

function userDetails(user_id){
	$.ajax({
		url :  getContextPath()+"/userOne.do?user_id="+user_id,
		type : "get",
		dataType : "json",
		success : htmlView,
		error : function(){
			alert("error")
		}
	})	
}

function userDel(user_id){
	$.ajax({
		url :  getContextPath()+"/userDel.do?user_id="+user_id,
		type : "get",
		success : userList1,
		error : function(){
			alert("error")
		}
	})	
}

/*Umbrella 관련*/
function umbList(){
	$.ajax({
		url :  getContextPath()+"/umbList.do",
		type : "get",
		dataType : "json",
		success : htmlView,
		error : function(){
			alert("error")
		}
	})
}

function umDetails(umb_seq){
	$.ajax({
		url :  getContextPath()+"/umbOne.do?umb_seq="+umb_seq,
		type : "get",
		dataType : "json",
		success : htmlView,
		error : function(){
			alert("error")
		}
	})	
}

function umbDel(umb_seq){
	$.ajax({
		url :  getContextPath()+"/umbDel.do?umb_seq="+umb_seq,
		type : "get",
		success : umbList1,
		error : function(){
			alert("error")
		}
	})	
}


/*umbox 관련*/	
function uboxList(){
	$.ajax({
		url :  getContextPath()+"/uboxList.do",
		type : "get",
		dataType : "json",
		success : htmlView,
		error : function(){
			alert("error")
		}
	})	
}


function umDetails(ubox_seq){
	$.ajax({
		url :  getContextPath()+"/uboxOne.do?ubox_seq="+ubox_seq,
		type : "get",
		dataType : "json",
		success : htmlView,
		error : function(){
			alert("error")
		}
	})	
}


/*function umDetails(umb_seq){
	$.ajax({
		url :  getContextPath()+"/umbOne.do?umb_seq="+umb_seq,
		type : "get",
		dataType : "json",
		success : htmlView,
		error : function(){
			alert("error")
		}
	})	
}*/












	
	
