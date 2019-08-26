function handleTodoSubmit(event){
	event.preventDefault();

	var todoTxt = $('#todo')[0];
	var priorityLevel = $('#priority')[0].value;

	if( todoTxt.value == "" ){
		alert("Todo is required!")
		return false;
	}

	// var list = container.innerHTML;
	var list = document.createElement("li");

	list.className = "list-group-item " + getClassName(priorityLevel);

	var child = "";
	child += "<input type='checkbox'/>&nbsp;";
	child += "<span>"+ todoTxt.value +"</span>";

	child += getSelectBox();

	child += "<a class='remove-todo' onclick='removeTodo(this)'>X</a>";

	list.innerHTML = child;

	// list += "<li class='list-group-item " + getClassName(priorityLevel) + "'>";
	// 	list += "<input type='checkbox'/>&nbsp;"
	// 	list += "<span>"+ todoTxt.value +"</span>"
	// list += "</li>";
	
	// getContainer as per the priorityLevel
	var container = getContainer(priorityLevel);

	container.appendChild(list);

	// Set Priority value to SelectBox which is placed in each Todo Item.
	list.querySelector('select').value = priorityLevel;
	
	//Clear Old Value 
	todoTxt.value = ""
	$('#priority').value = "1";

}

function getContainer(priority){
	if(priority == 1){
		return $('#todo-list-container1')[0];
	} else if (priority == 2){
		return $('#todo-list-container2')[0];
	} else if (priority == 3) {
		return $('#todo-list-container3')[0];
	} else {
		return $('#todo-list-container4')[0];
	}
}

function getClassName(priority){
	if(priority == 1){
		return "list-group-item-danger"
	} else if (priority == 2){
		return "list-group-item-warning"
	} else if (priority == 3) {
		return "list-group-item-info"
	} else {
		return "list-group-item-default"
	}
}

function removeTodo(ele){
	ele.parentElement.remove();
}

function getSelectBox(){
	var selectBox = '<select class="input-sm" onchange="changePriority(this)">'
  	selectBox += '<option value="1">High Priority</option>'
  	selectBox += '<option value="2">Medium Priority</option>'
  	selectBox += '<option value="3">Low Priority</option>'
  	selectBox += '<option value="4">Least Priority</option>'
  selectBox += '</select>'

  return selectBox;
}

function changePriority(ele){
	ele.parentElement.className = "list-group-item " + getClassName(ele.value)
	var todoItem = ele.parentElement;
	var container = getContainer(ele.value);
	container.appendChild(todoItem);
}