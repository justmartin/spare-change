// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function() {

	$("#show-results2").click(showResults2);
	$("#show-results3").click(showResults3);
	$("#show-results4").click(showResults4);

	function showResults2(event){
		event.preventDefault();
		$("#show-results2").hide();
		$('#second-batch').slideDown();
	}

	function showResults3(event){
		event.preventDefault();
		$("#show-results3").hide();
		$('#third-batch').slideDown();
	}

	function showResults4(event){
		event.preventDefault();
		$("#show-results4").hide();
		$('#fourth-batch').slideDown();
	}

});