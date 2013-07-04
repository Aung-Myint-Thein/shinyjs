$(document).on("click", "button.increment", function(evt){
	var el = $(evt.target);
	el.text(parseInt(el.text())+1);
	el.trigger("change");
});


var incrementBinding = new Shiny.InputBinding();
$.extend(incrementBinding,{
	find: function(scope){
		return $(scope).find(".increment");
	},
	getValue:function(el){
		return parseInt($(el).text());
	},
	setValue:function(el, value){
		$(el).text(value);
	},
	subscribe:function(el, callback){
		$(el).on("change.incrementBinding", function(e){
			callback();
		});
	},
	unsubscribe:function(el){
		$(el).off(".incrementBinding");
	}
});

Shiny.inputBindings.register(incrementBinding);

var img = '<img src="https://si0.twimg.com/a/1339639284/images/three_circles/twitter-bird-white-on-blue.png" />';

$(function(){
	$('#tooltip').tooltip();
	
	$("#blob").popover({trigger: 'click', html: 'true', title: 'Look!  A bird image!', content: img });
	});
