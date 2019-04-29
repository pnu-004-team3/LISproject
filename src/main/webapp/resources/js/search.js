
function search_click(){
	var input_name = document.getElementById('search_input').value;
	var target = document.getElementById('select');
	var input_type = target.options[target.selectedIndex].value;
	
	console.log(document.getElementById('select'));
	console.log(input_name);
	console.log(input_type);
	window.open("search.html?type:" + input_type +"&input:"+ input_name);
}