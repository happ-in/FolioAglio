<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<%@ page import="file.DBUtil" %>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>���̵� �ߺ� üũ</title>
	
	<style type="text/css">
		#wrap {
			width: 490px;
			text-align :center;
			margin: 0 auto 0 auto;
		}
		
		#chk{
			text-align :center;
		}
		
		#cancelBtn{
			visibility:visible;
		}
		
		#useBtn{
			 visibility:hidden;
		}

	</style>
	
	<script type="text/javascript">
	
		var httpRequest = null;
		
		// httpRequest ��ü ����
		function getXMLHttpRequest(){
			var httpRequest = null;
		
			if(window.ActiveXObject){
				try{
					httpRequest = new ActiveXObject("Msxml2.XMLHTTP");	
				} catch(e) {
					try{
						httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
					} catch (e2) { httpRequest = null; }
				}
			}
			else if(window.XMLHttpRequest){
				httpRequest = new window.XMLHttpRequest();
			}
			return httpRequest;	
		}
		
		
		// ȸ������â�� ���̵� �Է¶��� ���� �����´�.
		function pValue(){
			document.getElementById("userId").value = opener.document.userInfo.id.value;
		}
		
		// ���̵� �ߺ�üũ
		function idCheck(){

			var id = document.getElementById("userId").value;

			if (!id) {
				alert("���̵� �Է����� �ʾҽ��ϴ�.");
				return false;
			} 
			else if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")){ 
				alert("�ѱ� �� Ư�����ڴ� ���̵�� ����Ͻ� �� �����ϴ�.");
				return false;
			}
			else
			{
				  $.ajax({    //ajax�Լ� �ȿ� ��ü�� ���·� �������� �ִ´�. 
				         url:'id_check.jsp',  //�����������ϴ� ���������� �ּҸ� �ִ´�.
				         type:'post',
				         data:{
		                      id: document.getElementById("userId").value,  
		               },
				  success : function(t){ 
                      if(t==0){
                    	alert("����Ҽ����� ���̵��Դϴ�.");
      					document.getElementById("cancelBtn").style.visibility='visible';
      					document.getElementById("useBtn").style.visibility='hidden';
      					document.getElementById("msg").innerHTML ="";
                      }
                      else{
                        document.getElementById("cancelBtn").style.visibility='hidden';
      					document.getElementById("useBtn").style.visibility='visible';
      					document.getElementById("msg").innerHTML = "��� ������ ���̵��Դϴ�.";
                      }
        			} 
				    });   
			}
		}
		
		
		// ����ϱ� Ŭ�� �� �θ�â���� �� ���� 
		function sendCheckValue(){
			// �ߺ�üũ ����� idCheck ���� �����Ѵ�.
			opener.document.userInfo.idDuplication.value ="idCheck";
			// ȸ������ ȭ���� ID�Է¶��� ���� ����
			opener.document.userInfo.id.value = document.getElementById("userId").value;
			
			if (opener != null) {
            	opener.chkForm = null;
            	self.close();
			}	
		}	
	</script>
	
</head>
<body onload="pValue()">
<div id="wrap">
	<br>
	<b><font size="4" color="gray">���̵� �ߺ�üũ</font></b>
	<hr size="1" width="460">
	<br>
	<div id="chk">
		<form id="checkForm">
			<input type="text" name="idinput" id="userId">
			<input class="btn btn-light" type="button" value="�ߺ�Ȯ��" onclick="idCheck()">
		</form>
		<div id="msg" style="height:20;"></div>
		<br>
		<input class="btn btn-light" id="cancelBtn" type="button" value="���" onclick="window.close()" style="position: relative;top:0"><br>
		<input class="btn btn-light" id="useBtn" type="button" value="����ϱ�" onclick="sendCheckValue()" style="position: relative;top:-35">
	</div>
</div>	
</body>
</html>