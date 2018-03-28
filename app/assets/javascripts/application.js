// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

// $(document).on('turbolinks:load', function(e){  
// 	$('#regions').on('change',(function(){
// 		var region_id = $(this).find(":selected").val();
// 		$.post("return_cities", {region_id: region_id});
// 	});

// 	$('#cities').change(function(){
// 		var city_id = $(this).find(":selected").val();
// 		$.post("return_communes", {city_id: city_id});
// 	})
// })	

$(document).on('turbolinks:load', function(e){ 
	$('select[name="camping[country]"]').on('change', function(event){
		$.ajax({
			url: '<%= regions_path %>',
			type: 'get',
			dataType: 'script',
			data: {country_id: $(this).val()}
		})
	})
});