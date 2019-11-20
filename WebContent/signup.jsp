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
               <label for="UserID"> 아이디 </label>
               <input name="UserID" type="text" placeholder="ID" class="form-control" />
            </div>
            <div class="form-group">
               <label for="UserPW"> 비밀번호 </label>
               <input name="UserPW" type="text" placeholder="PassWord" class="form-control" />
            </div>
            <div class="form-group">                
               <label for="CheckPW"> 비밀번호 재확인 </label>
               <input name="CheckPW" type="text" placeholder="PassWord" class="form-control" />
            </div>
            <div class="checkbox">                
               <label>
                  <input type="checkbox" /> 약관에 동의합니다.
               </label>
            </div> 
            <button type="submit" class="btn btn-primary">
               가입하기
            </button>
         </form>
      </div>
   </div>
</div>
</body>
</html>