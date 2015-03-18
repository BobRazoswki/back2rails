// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
	 jQuery(window).load(function(){
      jQuery("[data-toggle]").click(function() {
        var toggle_el = jQuery(this).data("toggle");
        jQuery(toggle_el).toggleClass("open-sidebar");
      });
    });

App = Ember.Application.create();

App.Router.map(function(){
	this.resource('documents');
})