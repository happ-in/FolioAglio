<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="file.DBUtil" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale ="1">
<title>Folio2PDF</title>
</head>
<body>
	<%
	Object session_object=session.getAttribute("signedUser");
	String session_name=(String)session_object;
	Connection conn = DBUtil.getConn();
	int i = 0, PIlen = 0, edulen = 0, awdlen = 0, carrlen=0, abrdlen=0, EAlen=0, sklen=0;
	String[] PIArr = request.getParameterValues("PI");
	if(PIArr != null)
		PIlen = PIArr.length;
	String[] eduNumArr = request.getParameterValues("edu");
	if(eduNumArr != null)
		edulen = eduNumArr.length;
	String[] carrNumArr = request.getParameterValues("carr");
	if(carrNumArr != null)
		carrlen = carrNumArr.length;
	String[] awdNumArr = request.getParameterValues("award");
	if(awdNumArr != null)
		awdlen = awdNumArr.length;
	String[] abrdNumArr = request.getParameterValues("abrd");
	if(abrdNumArr != null)
		abrdlen = abrdNumArr.length;
	String[] EANumArr = request.getParameterValues("EA");
	if(EANumArr != null)
		EAlen = EANumArr.length;
	String[] skNumArr = request.getParameterValues("skill");
	if(skNumArr != null)
		sklen = skNumArr.length;

	String sql = "select * from personal_information where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,session_name);
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()){%>
		<div>이름 : <%=rs.getString("name")%></div>
		<div>영문명 : <%=rs.getString("en_name")%></div>
		<div>생년월일 : <%=rs.getString("birth")%></div>
		<div>이메일 : <%=rs.getString("email")%></div>
		<div>전화번호 : <%=rs.getString("call_num")%></div>
		<%if(PIlen > 0){
			while(i < PIlen){
				if(Integer.parseInt(PIArr[i])==1){%>
					<div>국적 : <%=rs.getString("country")%></div>
				<%} else if(Integer.parseInt(PIArr[i])==2){%>
					<div>성별 : <%=rs.getString("sex")%></div>
				<%} else if(Integer.parseInt(PIArr[i])==3){%>
					<div>주소 : <%=rs.getString("address")%></div>
				<%} else if(Integer.parseInt(PIArr[i])==4){%>
					<div>git 주소 : <%=rs.getString("git_address")%></div>
				<%} else if(Integer.parseInt(PIArr[i])==5){%>
					<div>사진 : <img src="<%=rs.getString("picture")%>"/></div>
				<%} else if(Integer.parseInt(PIArr[i])==6){%>
					<div>메모 : <%=rs.getString("personal_memo")%></div>
				<%}i++;
			}
		}
	}i=0;
	rs.close();
	pstmt.close();
	%>
	
	<div>-구분선-</div>

	<%
	if(edulen > 0){
		sql = "select * from education where school_num=?";
		pstmt = conn.prepareStatement(sql);
	
		while(i < edulen){
			pstmt.setInt(1, Integer.parseInt(eduNumArr[i]));
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(Integer.parseInt(rs.getString("school_radio")) == 1){%>
					<div>고등학교</div>
					<div>학교명 : <%=rs.getString("school_name")%></div>
					<div>학교소재지 : <%=rs.getString("school_location")%></div>
					<div>계열 : <%=rs.getString("division")%></div>
					<div>입학일자 : <%=rs.getString("e_date")%></div>
					<div>졸업일자 : <%=rs.getString("g_date")%></div>
					<div>졸업여부 : <%=rs.getString("g_state")%></div>
					<div>-구분선-</div>
				<%} else if(Integer.parseInt(rs.getString("school_radio")) == 2){%>
					<div>대학교</div>
					<div>학교명 : <%=rs.getString("school_name")%></div>
					<div>학교소재지 : <%=rs.getString("school_location")%></div>
					<div>계열 : <%=rs.getString("division")%></div>
					<div>입학구분 : <%=rs.getString("e_state")%></div>
					<div>입학일자 : <%=rs.getString("e_date")%></div>
					<div>졸업일자 : <%=rs.getString("g_date")%></div>
					<div>졸업여부 : <%=rs.getString("g_state")%></div>
					<div>전공 : <%=rs.getString("major")%></div>
					<div>학점 : <%=rs.getString("grade")%></div>
					<div>전체학점 : <%=rs.getString("total_grade")%></div>
					<div>전공학점 : <%=rs.getString("major_grade")%></div>
					<div>이수학점 : <%=rs.getString("classes")%></div>
					<div>복수전공, 부전공 : <%=rs.getString("submajor")%></div>
					<div>메모 : <%=rs.getString("edu_memo")%></div>
					<div>-구분선-</div>
				<%} else if(Integer.parseInt(rs.getString("school_radio")) == 3){%>
					<div>대학원</div>
					<div>학교명 : <%=rs.getString("school_name")%></div>
					<div>학교소재지 : <%=rs.getString("school_location")%></div>
					<div>계열 : <%=rs.getString("division")%></div>
					<div>입학일자 : <%=rs.getString("e_date")%></div>
					<div>졸업일자 : <%=rs.getString("g_date")%></div>
					<div>졸업여부 : <%=rs.getString("g_state")%></div>
					<div>전공 : <%=rs.getString("major")%></div>
					<div>학점 : <%=rs.getString("grade")%></div>
					<div>메모 : <%=rs.getString("edu_memo")%></div>
					<div>-구분선-</div>
				<%}
			}i++;
		}
		rs.close();
		pstmt.close();
	}i=0;
	
	if(carrlen > 0){
		sql = "select * from carrier where carrier_num=?";
		pstmt = conn.prepareStatement(sql);
	
		while(i < carrlen){
			pstmt.setInt(1, Integer.parseInt(carrNumArr[i]));
			rs = pstmt.executeQuery();
			
			if(rs.next()){%>
				<div>회사명 : <%=rs.getString("company_name")%></div>
				<div>직위 : <%=rs.getString("position")%></div>
				<div>담당업무 : <%=rs.getString("work")%></div>
				<div>연봉 : <%=rs.getString("salary")%></div>
				<div>재직기간 : <%=rs.getString("s_period")%>~<%=rs.getString("e_period")%></div>
				<div>상세설명 : <%=rs.getString("detail")%></div>
				<div><img src="<%=rs.getString("picture")%>"/></div>
				<div>메모 : <%=rs.getString("carrier_memo")%></div>
				<div>-구분선-</div>
			<%}
			i++;
		}
		rs.close();
		pstmt.close();
	}i=0;
	
	if(abrdlen > 0){
		sql = "select * from abroad where abroad_num=?";
		pstmt = conn.prepareStatement(sql);
	
		while(i < abrdlen){
			pstmt.setInt(1, Integer.parseInt(abrdNumArr[i]));
			rs = pstmt.executeQuery();
			
			if(rs.next()){%>
				<div>체류국가 : <%=rs.getString("country_name")%></div>
				<div>체류형태 : <%=rs.getString("reason")%></div>
				<div>구사언어 : <%=rs.getString("abroad_language")%></div>
				<div>시작날짜 : <%=rs.getString("abroad_s_date")%></div>
				<div>끝날짜 : <%=rs.getString("abroad_g_date")%></div>
				<div>상세설명 : <%=rs.getString("abroad_detail")%></div>
				<div><img src="<%=rs.getString("picture")%>"/></div>
				<div>메모 : <%=rs.getString("abroad_memo")%></div>
				<div>-구분선-</div>
			<%}
			i++;
		}
		rs.close();
		pstmt.close();
	}i=0;
	
	if(EAlen > 0){
		sql = "select * from external_activities where activity_num=?";
		pstmt = conn.prepareStatement(sql);
	
		while(i < EAlen){
			pstmt.setInt(1, Integer.parseInt(EANumArr[i]));
			rs = pstmt.executeQuery();
			
			if(rs.next()){%>
				<div>구분 : <%=rs.getString("activity_radio")%></div>
				<div>단체명 : <%=rs.getString("group_name")%></div>
				<div>시작날짜 : <%=rs.getString("activity_s_date")%></div>
				<div>끝날짜 : <%=rs.getString("activity_e_date")%></div>
				<div>활동 상세 내용 : <%=rs.getString("activity_detail")%></div>
				<div><img src="<%=rs.getString("picture")%>"/></div>
				<div>메모 : <%=rs.getString("activity_memo")%></div>
				<div>-구분선-</div>
			<%}
			i++;
		}
		rs.close();
		pstmt.close();
	}i=0;
	
	if(awdlen > 0){
		sql = "select * from award where award_num=?";
		pstmt = conn.prepareStatement(sql);
	
		while(i < awdlen){
			pstmt.setInt(1, Integer.parseInt(awdNumArr[i]));
			rs = pstmt.executeQuery();
			
			if(rs.next()){%>
				<div>수상명 : <%=rs.getString("awd_name")%></div>
				<div>주최 : <%=rs.getString("awd_org")%></div>
				<div>결과 : <%=rs.getString("awd_result")%></div>
				<div>상세 : <img src="<%=rs.getString("picture")%>"/></div>
				<div>메모 : <%=rs.getString("awd_memo")%></div>
				<div>-구분선-</div>
			<%}
			i++;
		}
		rs.close();
		pstmt.close();
	}i=0;
	
	if(sklen > 0){
		sql = "select * from skill where issue_num=?";
		pstmt = conn.prepareStatement(sql);
	
		while(i < sklen){
			pstmt.setInt(1, Integer.parseInt(skNumArr[i]));
			rs = pstmt.executeQuery();
			String div1 = "어학";
			String div2 = "자격증";
			if(rs.next()){
				if(div1.equals(rs.getString("skill_radio"))){%>
					<div>어학</div>
					<div>외국어명 : <%=rs.getString("language_name")%></div>
					<div>어학종류 : <%=rs.getString("kind")%></div>
					<div>수험번호 : <%=rs.getString("application_num")%></div>
					<div>응시일자 : <%=rs.getString("test_date")%></div>
					<div>취득점수 : <%=rs.getString("score")%></div>
					<div>취득급수 : <%=rs.getString("score_name")%></div>
					<div>-구분선-</div>
				<%} else if(div2.equals(rs.getString("skill_radio"))){%>
					<div>자격증</div>
					<div>자격증명 : <%=rs.getString("classfication_name")%></div>
					<div>발급기관 : <%=rs.getString("issue_org")%></div>
					<div>취득일자 : <%=rs.getString("issue_date")%></div>
					<div>-구분선-</div>
				<%}
			}i++;
		}
		rs.close();
		pstmt.close();
	}i=0;
	conn.close();%>
	<script>
      function fnSaveAsPdf() {
        html2canvas(document.body).then(function(canvas) {
          var imgData = canvas.toDataURL('image/png');
          var imgWidth = 210;
          var pageHeight = imgWidth * 1.414;
          var imgHeight = canvas.height * imgWidth / canvas.width;
          var position = 0;
          var heightLeft = imgHeight;
          var doc = new jsPDF({
             'orientation': 'p',
             'unit': 'mm',
             'format': 'a4'
          });
          // 첫 페이지 출력
          doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
          heightLeft -= pageHeight;
           
          // 한 페이지 이상일 경우 루프 돌면서 출력
          while (heightLeft >= 20) {
            position = heightLeft - imgHeight;
            doc.addPage();
            doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
            heightLeft -= pageHeight;
          }
          
          doc.save('sample_A4.pdf');
          alert("완료!");
        });
      }
      
    </script>
    <button onclick="fnSaveAsPdf();">Save PDF</button>
</body>
</html>