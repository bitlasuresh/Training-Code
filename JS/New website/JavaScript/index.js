document.getElementById('date').innerHTML = new Date().toDateString();

$.var ajax = new XMLHttpRequest();
ajax.onreadystatechange = function() {
	if (ajax.readyState == 4 && ajax.status == 200) {
		var response = ajax.responseText;
	}
};
ajax.open(method, URL, true);
ajax.setRequestHeader("Content-type", "application/json");
ajax.send(data);