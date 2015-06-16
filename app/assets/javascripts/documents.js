// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

jQuery( document ).ready(function() {


    jQuery(window).load(function(){
      jQuery("[data-toggle]").click(function() {
        var toggle_el = jQuery(this).data("toggle");
        jQuery(toggle_el).toggleClass("open-sidebar");
      });
    });

jQuery(".add-link").click(function() {
	jQuery(".add-container").toggleClass('add-container-active')
});

/*jQuery('.new_doc').on('submit', function(event) {
		event.preventDefault();
		var docList = jQuery(this).parent().siblings('.list-group')
		jQuery.post(this.action, function(response) {
			var template = jQuery('#documents-template').html();
			var output = Mustache.render(template, response);
			docList.prepend(output);
		})
		});
	});*/


});
	 

