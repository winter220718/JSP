// 해당 페이지에 존재하는 모든 form 태그를 가져옴
const forms = document.getElementsByTagName("form");

// 어떤 소스코드에다 갔다 붙여도 form안에 있는 것들에 대한 검사를 진행한다
for (i = 0; i < forms.length; ++i) {
	forms[i].addEventListener('submit', (e) => {
		// 해당 이벤트의 기본 동작을 막을 수 있다
		e.preventDefault();
		
		// form태그에 이벤트를 붙인 것이므로 e.target은
		// submit 이벤트가 발생한 해당 폼 태그를 의미한다
		
		// 폼 내부의 모든 요소들
		const form = e.target;
		const elements = e.target.elements;
		
		for (j = 0; j < elements.length; ++j){
			
			const element = elements[j];
			
			// submit 버튼은 체크할 필요 없다
			if (element.name == "" || element.type == "submit") {
				continue;
			}
			
			if (element.value == null || element.value == "") {
				window.alert(element.name + " is empty!!");
				
				// focus() : 비어있는 해당 요소로 커서를 옮긴다
				element.focus();
				return;
			}
			
			// 비밀번호가 비어있지 않더라도 4글자 미만이라면 submit 하지 않음
			if (element.name.includes('pw') && element.value.length <= 4) {
				window.alert('password length must be longer than 4');
				element.focus();
				return;
			}
		}
		
		
		// 검사가 끝난 후 최종적으로 해당 form을 submit한다
		form.submit();
	});
}