<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Join</title>
</head>
<body>
<div class="container-fluid">
   <div class="row">
      <div class="col-md">
         <form role="form">
            <div class="form-group">                
               <label for="UserID"> ���̵� </label>
               <input name="UserID" type="text" placeholder="ID" class="form-control" />
            </div>
            <div class="form-group">
               <label for="UserPW"> ��й�ȣ </label>
               <input name="UserPW" type="text" placeholder="PassWord" class="form-control" />
            </div>
            <div class="form-group">                
               <label for="CheckPW"> ��й�ȣ ��Ȯ�� </label>
               <input name="CheckPW" type="text" placeholder="PassWord" class="form-control" />
            </div>
            <div class="checkbox">                
               <label>
                  <input type="checkbox" /> ����� �����մϴ�.
               </label>
            </div> 
            <button type="submit" class="btn btn-primary">
               �����ϱ�
            </button>
         </form>
      </div>
   </div>
</div>
</body>
</html>