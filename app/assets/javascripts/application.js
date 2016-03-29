//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery-ui
//= require_tree .

$(document).on("page:load ready", function(){
    $("input.datepicker").datepicker();
});
