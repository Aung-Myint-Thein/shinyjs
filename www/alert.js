$(document).on("click", "button.increment", function(evt){
	var el = $(evt.target);
	el.text(parseInt(el.text())+1);
	el.trigger("change");
});
