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

//= require jquery3
//= require clipboard
//= require bootstrap-sprockets
//= require popper
//= require dataTables/jquery.dataTables
//= require jquery_ujs
//= require jquery-ui
//= require jquery.validate
//= require rails_sortable
//= require select2-full
//= require turbolinks
//= require_tree .

$( document ).on('turbolinks:load', function() {
  var clipboard = new Clipboard('.clipboard-btn');

  calcTotal();

	$('#allLeaguesDataTable').DataTable();

	$(function() {
	  $('.sortable').railsSortable();
	});

	//  Form Logic  //

	$('#isPrivate div input').change(function(){
	  if($(this).val() == '1'){ //'.val()'
	    $('#password').show();
	  } else {
	  	$('#password').hide();
	  }
	});

	//  Weekly Select  //

  // $('#qb_select').select2({
  //    tags: true,
  //    placeholder: 'Select an option',
  //    templateSelection : function (tag, container){
  //       // here we are finding option element of tag and
  //       // if it has property 'locked' we will add class 'locked-tag' 
  //       // to be able to style element in select
  //       var $option = $('#qb_select option[value="'+tag.id+'"]');
  //       if ($option.attr('locked')){
  //          $(container).addClass('locked-tag');
  //          tag.locked = true; 
  //       }
  //       return tag.text;
  //    },
  //  })
  //  .on('select2:unselecting', function(e){
  //     // before removing tag we check option element of tag and 
  //     // if it has property 'locked' we will create error to prevent all select2 functionality
  //      if ($(e.params.args.data.element).attr('locked')) {
  //          e.select2.pleaseStop();
  //       }
  //    });

	$( "#qb_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1,
    dropdownAutoWidth : true,
    width: 'auto',
     templateSelection : function (tag, container){
        // here we are finding option element of tag and
        // if it has property 'locked' we will add class 'locked-tag' 
        // to be able to style element in select
        var $option = $('#qb_select option[value="'+tag.id+'"]');
        if ($option.attr('locked')){
           $(container).addClass('locked-tag');
           tag.locked = true; 
        }
        return tag.text;
     },
   })
   .on('select2:unselecting', function(e){
      // before removing tag we check option element of tag and 
      // if it has property 'locked' we will create error to prevent all select2 functionality
       if ($(e.params.args.data.element).attr('locked')) {
           e.select2.pleaseStop();
        }
     });

	$( "#rb_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 4,
    dropdownAutoWidth : true,
    width: 'auto',
     templateSelection : function (tag, container){
        // here we are finding option element of tag and
        // if it has property 'locked' we will add class 'locked-tag' 
        // to be able to style element in select
        var $option = $('#rb_select option[value="'+tag.id+'"]');
        if ($option.attr('locked')){
           $(container).addClass('locked-tag');
           tag.locked = true; 
        }
        return tag.text;
     },
   })
   .on('select2:unselecting', function(e){
      // before removing tag we check option element of tag and 
      // if it has property 'locked' we will create error to prevent all select2 functionality
       if ($(e.params.args.data.element).attr('locked')) {
           e.select2.pleaseStop();
        }
	});

	$( "#wr_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 5,
    dropdownAutoWidth : true,
    width: 'auto',
     templateSelection : function (tag, container){
        // here we are finding option element of tag and
        // if it has property 'locked' we will add class 'locked-tag' 
        // to be able to style element in select
        var $option = $('#wr_select option[value="'+tag.id+'"]');
        if ($option.attr('locked')){
           $(container).addClass('locked-tag');
           tag.locked = true; 
        }
        return tag.text;
     },
   })
   .on('select2:unselecting', function(e){
      // before removing tag we check option element of tag and 
      // if it has property 'locked' we will create error to prevent all select2 functionality
       if ($(e.params.args.data.element).attr('locked')) {
           e.select2.pleaseStop();
        }
	});

	$( "#te_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 3,
    dropdownAutoWidth : true,
    width: 'auto',
     templateSelection : function (tag, container){
        // here we are finding option element of tag and
        // if it has property 'locked' we will add class 'locked-tag' 
        // to be able to style element in select
        var $option = $('#te_select option[value="'+tag.id+'"]');
        if ($option.attr('locked')){
           $(container).addClass('locked-tag');
           tag.locked = true; 
        }
        return tag.text;
     },
   })
   .on('select2:unselecting', function(e){
      // before removing tag we check option element of tag and 
      // if it has property 'locked' we will create error to prevent all select2 functionality
       if ($(e.params.args.data.element).attr('locked')) {
           e.select2.pleaseStop();
        }
	});

	$( "#k_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1,
    dropdownAutoWidth : true,
    width: 'auto',
     templateSelection : function (tag, container){
        // here we are finding option element of tag and
        // if it has property 'locked' we will add class 'locked-tag' 
        // to be able to style element in select
        var $option = $('#k_select option[value="'+tag.id+'"]');
        if ($option.attr('locked')){
           $(container).addClass('locked-tag');
           tag.locked = true; 
        }
        return tag.text;
     },
   })
   .on('select2:unselecting', function(e){
      // before removing tag we check option element of tag and 
      // if it has property 'locked' we will create error to prevent all select2 functionality
       if ($(e.params.args.data.element).attr('locked')) {
           e.select2.pleaseStop();
        }
	});

	$( "#def_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1,
    dropdownAutoWidth : true,
    width: 'auto',
     templateSelection : function (tag, container){
        // here we are finding option element of tag and
        // if it has property 'locked' we will add class 'locked-tag' 
        // to be able to style element in select
        var $option = $('#def_select option[value="'+tag.id+'"]');
        if ($option.attr('locked')){
           $(container).addClass('locked-tag');
           tag.locked = true; 
        }
        return tag.text;
     },
   })
   .on('select2:unselecting', function(e){
      // before removing tag we check option element of tag and 
      // if it has property 'locked' we will create error to prevent all select2 functionality
       if ($(e.params.args.data.element).attr('locked')) {
           e.select2.pleaseStop();
        }
	});


	$('#qb_select, #rb_select, #wr_select, #te_select, #k_select, #def_select').on('change', calcTotal);

  function calcTotal() {
		var total = ($('#qb_select').val().length) + ($('#rb_select').val().length) + ($('#wr_select').val().length) + ($('#te_select').val().length) + ($('#k_select').val().length) + ($('#def_select').val().length)
	  $("#total_count").text(total);
	};

	$('#weekly_form').validate({
    rules: {
      "qbs[]": {
      	required: true,
        minlength: 1,
        maxlength: 1
      },
      "rbs[]": {
      	required: true,
        minlength: 2,
        maxlength: 4
      },
      "wrs[]": {
      	required: true,
        minlength: 3,
        maxlength: 5
      },
      "tes[]": {
      	required: true,
        minlength: 1,
        maxlength: 3
      },
      "ks[]": {
      	required: true,
        minlength: 1,
        maxlength: 1
      },
      "defs[]": {
      	required: true,
        minlength: 1,
        maxlength: 1
      },
    },
    messages: {
      "qbs[]": {
      	minlength: 'You must choose at least {0} players',
      },
      "rbs[]": {
      	minlength: 'You must choose at least {0} players',
      },
      "wrs[]": {
      	minlength: 'You must choose at least {0} players',
      },
      "tes[]": {
      	minlength: 'You must choose at least {0} players',
      },
      "ks[]": {
      	minlength: 'You must choose at least {0} players',
      },
      "defs[]": {
      	minlength: 'You must choose at least {0} players',
      }
    },
    submitHandler: function(form){
      var total = ($('#qb_select').val().length) + ($('#rb_select').val().length) + ($('#wr_select').val().length) + ($('#te_select').val().length) + ($('#k_select').val().length) + ($('#def_select').val().length)
      console.log(total);
      if (total != 11) {
        $("div.error").html("You must select 11 players")
        return false;
      } else form.submit();
    }
	});


});