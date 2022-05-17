
function getContextPath(){
   var hostIndex = location.href.indexOf(location.host)+location.host.length;
   var contextPath = location.href.substring(hostIndex, location.href.indexOf("/", hostIndex+1))
   return contextPath
}

function userList(){
	$.ajax({
		url :  getContextPath()+"/userList.do",
		type : "get",
		dataType : "json",
		success : htmlView,
		error : function(){
			alert("error")
		}
	})
}

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
	
	
