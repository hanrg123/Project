
/* 페이지 로딩후 바로시작 */
$(document).ready(function(){
	//셀렉트 박스 값 변경시 실행
	$('#classSelecter').on('change', function() {
		selectStudentList();
		$('#studentInfoDiv').empty();
	});
	
	//학생이름 클릭시 실행
	$(document).on('click', '.studentName', function(){
		selectStudentDetail($(this));
	});
	
	//추가 버튼 클릭시 실행
	$(document).on('click', '#addStudentbtn', function(){
		var className = $('#classSelecter option:selected').text();
		alert(className + '  학생 추가');
		
		var str = '';
		str += '<tr>';
		str += '<td><input type="button" value="등록" id="insertBtn"/></td>';
		str += '<td><input type="text" size="10px;" id="inputStuName"/></td>';
		str += '<td><input type="text" size="10px;" readonly value="' + className + '" /></td>';
		str += '</tr>';
		//부모노드
//		$('#studentListDiv').parent();		
//		//자식들 중에 첫번째
//		$('#studentListDiv').children().eq(0)
//		$('#studentListDiv').children(':first')
//		//자식들 중에 마지막
//		$('#studentListDiv').children().eq(2)
		$('#studentListDiv').children(':last').append(str);
	});
	
	//등록버튼 클릭시.
	$(document).on('click', '#insertBtn', function(){
		alert('학생을 등록합니다.');
		
		var isReg = confirm('등록하시겠습니까?');
		
		if(isReg){
			var studentName = $('#inputStuName').val();
			var className = $('#classSelecter option:selected').text();

			$.ajax({
				//데이터에 있는 값들을 url로 같이 들고간다.
				url : 'insertStudent.do',
				type : 'post',
				data : {'studentName':studentName, 'className':className},
				success : function(result) {
					if(result){
						alert('등록되었습니다.');
						selectStudentList();
					}
				},
				error : function() {
					alert('fail');
				}
			});
		}
	});
	
	//수정버튼 클릭시 실행
	$(document).on('click', '#updateBtn', function(){
		var isReg = confirm('수정하시겠습니까?');
		
		if(isReg){
			var korScore = $('#korScore').val();
			var engScore = $('#engScore').val();
			var mathScore = $('#mathScore').val();
			var studentAddr = $('#studentAddr').val() ;
			var studentAge = $('#studentAge').val();
			var birthDay = $('#birthDay').val();
			var studentNum = $('#korScore').parent().prev().prev().text();
			
			$.ajax({
				//데이터에 있는 값들을 url로 같이 들고간다.
				url : 'updateStudent.do',
				type : 'post',
				data : {
					'korScore' : korScore ,
					'engScore' : engScore ,
					'mathScore' : mathScore ,
					'studentAddr' : studentAddr ,
					'studentAge' : studentAge ,
					'birthDay' : birthDay ,
					'studentNum' : studentNum
				},
				success : function(result) {
					if(result){
						alert('수정완료.');
					}
				},
				error : function() {
					alert('fail');
				}
			});
		}
	});
	
	//전체 체크박스 클릭시 실행
	$(document).on('click', '#checkAll', function(){
		//is는 반환형이 대부분 불린형(true/false).
		var isChecked = $('#checkAll').is(':checked');
		
		if(isChecked){
			//모든 체크박스 체크
			$('.cbBox').prop('checked', true);
		}
		else{
			//모든 체크박스 해제
			$('.cbBox').prop('checked', false);
		}
	});
	
	//삭제 클릭시 실행
	$(document).on('click', '#deleteStudentbtn', function(){
		if(confirm('삭제 하시겠습니까?')){
			if($('.cbBox:checked').length == 0){
				alert('삭제 할 학생을 선택하세요.');
			}
			else {
				var studentNum = '';
				$('.cbBox:checked').each(function(index, element){
					studentNum += $(element).parent().next().text() + ',';
				});
				
				$.ajax({
					//데이터에 있는 값들을 url로 같이 들고간다.
					url : 'deleteStudent.do',
					type : 'post',
					data : {'studentNumbers':studentNum},
					success : function(result) {
						alert('삭제완료');
						selectStudentList();
					},
					error : function() {
						alert('fail');
					}
				});
			}
		}
	});
	
});

/* 함수선언 */
(function($){
	selectStudentList = function(){
		
		var classCode = $('#classSelecter').val();

		$.ajax({
			//데이터에 있는 값들을 url로 같이 들고간다.
			url : 'selectStudentList.do',
			type : 'post',
			data : {'classCode':classCode},
			success : function(result) {
				//페이지를 이동하면 기존에 있던 정보는 지우고 선택한 정보로 다시 테이블을 그린다.
				$('#studentListDiv').empty();
				var str = '';
				str +='<table border="1" style="border-collapse: collapse;">';
				str +='<tr>';
				str +='<td><input type="checkbox" id="checkAll"/></td>';
				str +='<td width="50px;">학번 </td>';
				str +='<td width="100px;">이름 </td>';
				str +='<td width="100px;">클래스 </td>';
				str +='</tr>';
				//result개수 만큼 반복을 한다.여기서는 학생수 만큼 반복한다.
				//index -> 0,1,2,3처럼 바뀐다.
				$.each(result, function(index, element){
					str +='<tr>';
					str +='<td><input type="checkbox" class="cbBox"/></td>';
					str +='<td>'+ result[index].studentNum +'</td>';
					str +='<td><div class="studentName" style="cursor: pointer;"data-studentNum="'+ result[index].studentNum +'">'
						+ result[index].studentName +'</a>'+'<div></td>';
					str +='<td>'+ result[index].className +'</td>';
					//위에꺼로 쓰는게 더 좋다.~~
//					str +='<td>'+ element.studentNum +'</td>';
//					str +='<td>'+ element.studentName +'</td>';
//					str +='<td>'+ element.className +'</td>';
					str +='</tr>';
				});
				str +='</table>';
				
				$('#studentListDiv').append(str);
			},
			error : function() {
				alert('fail');
			}
		});
	};
	
	selectStudentDetail = function(Element){
		$('.studentName').css('font-weight', 'normal');//폰트일반으로
		$(Element).css('font-weight', 'bold');//선택한 폰트 굵게 만든다.
		
		var studentNum = $(Element).attr('data-studentNum');//this는 선택된 div를 말한다. 선택을하면 num값을 가져올 수 있다.
		
		
		$.ajax({
			url : 'selectStudent.do',
			type : 'post',
			data : {'studentNum' : studentNum},
			success : function(result) {//리졸트에 들어가는 객체는 컨트롤러에서 리턴한 VO다.
				var studentAddr = '';
				var studentAge = '';
				var birthDay = '';
				
				if(result.studentInfoVO != null){
					studentAddr = result.studentInfoVO.studentAddr;
					studentAge = result.studentInfoVO.studentAge;
					birthDay = result.studentInfoVO.birthDay;
					
				}
				
				$('#studentInfoDiv').empty();
				var str = '';
				str +='<div style="height: 40px;"></div>';
				str +='<table border="1" style="border-collapse: collapse;">';
				str +='<tr>';
				str +='<td width="50px;">학번 </td>';
				str +='<td width="100px;">이름 </td>';
				str +='<td width="100px;">국어점수 </td>';
				str +='<td width="100px;">영어점수 </td>';
				str +='<td width="100px;">수학점수 </td>';
				str +='</tr>';
				str +='<tr>';
				str +='<td>'+ result.studentNum +'</td>';
				str +='<td>'+ result.studentName +'</td>';
				str +='<td><input type="text" size="10px" id="korScore" value="'+ result.korScore +'"/></td>';
				str +='<td><input type="text" size="10px" id="engScore" value="'+ result.engScore +'"/></td>';
				str +='<td><input type="text" size="10px" id="mathScore" value="'+ result.mathScore +'"/></td>';
				str +='</tr>';
				str +='</table>';
				str +='<div style="height: 40px;"></div>';
				str +='<table border="1" style="border-collapse: collapse;">';
				str +='<tr>';
				str +='<td width="50px;" colspan="2">주소 </td>';
//				str +='<td width="100px;" colspan="3">'+ result.studentInfoVO.studentAddr +'</td>';
				str +='<td width="100px;" colspan="2"><input type="text" size="20px" id="studentAddr"value="'+ studentAddr +'"/></td>';
				str +='</tr>';
				str +='<tr>';
				str +='<td width="50px;">나이 </td>';
//				str +='<td width="50px;">'+ result.studentInfoVO.studentAge +'</td>';
				str +='<td width="30px;" ><input type="text" size="10px" id="studentAge" value="'+ studentAge +'"/></td>';
				str +='<td width="50px;">생일 </td>';
//				str +='<td width="100px;">'+ result.studentInfoVO.birthDay +'</td>';
				str +='<td width="100px;"><input type="text" size="20px" id="birthDay" value="'+ birthDay +'"/></td>';
				str +='</tr>';
				str +='</table>';
				str +='<div style="height: 40px;"></div>';
				str += '<table>';
				str +='<tr>';
				str += '<td><input type="button" value="수정" id="updateBtn"/></td>';
				str +='</tr>';
				str += '</table>';
				
				$('#studentInfoDiv').append(str);
			},
			error : function() {
				alert('fail');
			}
		});
	};
	
})(jQuery);
