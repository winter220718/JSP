const form = document.getElementsByTagName("form");
	

for (i = 0; i < form.length; ++i) {

	
	form[i].addEventListener('submit', (e) => {
		e.preventDefault();
		
		
		if (document.getElementByName('pw_check').value == null 
				|| document.getElementByName('pw_check').value == "") {
			window.alert("Please enter your password.");
			return;
		}
		
		else {
			
			if(document.getElementByName('writer_pw').value != document.getElementByName('pw_check').value) {
				window.alert("Passwords do not match.");
				return;
			} else {
				location.href="board/modify.jsp";
				return;		
			}
		}
	});
}

	

	
	
	
	
	
