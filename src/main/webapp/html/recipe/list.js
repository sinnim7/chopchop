"use strict";

var tbody = $("#list-table > tbody");
var trTemplateSrc = $('#t1').html();
var template = Handlebars.compile(trTemplateSrc);

loadData();
 
function loadData() {
  $.get("/app/json/recipe/list", function(data) {
	  tbody.html(template(data))
  });
}













