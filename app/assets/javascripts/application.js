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
//= require rails_sortable
//= require select2-full
//= require turbolinks
//= require_tree .

$( document ).on('turbolinks:load', function() {
  var clipboard = new Clipboard('.clipboard-btn');

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

	$('input:radio[name="flex1"]').change(function() {
    if ($(this).val()=='rb') {
      $('#flex1rb_select').attr('disabled', false);
      $('#flex1wr_select').attr('disabled', true);
      $('#flex1wr_select').val([]).trigger('change');
      $('#flex1te_select').attr('disabled', true);
      $('#flex1te_select').val([]).trigger('change');
    } else if ($(this).val()=='wr') {
      $('#flex1rb_select').attr('disabled', true);
      $('#flex1rb_select').val([]).trigger('change');
      $('#flex1wr_select').attr('disabled', false);
      $('#flex1te_select').attr('disabled', true);
      $('#flex1te_select').val([]).trigger('change');
    } else if ($(this).val()=='te') {
      $('#flex1rb_select').attr('disabled', true);
      $('#flex1rb_select').val([]).trigger('change');
      $('#flex1wr_select').attr('disabled', true);
      $('#flex1wr_select').val([]).trigger('change');
      $('#flex1te_select').attr('disabled', false);
    }
	});

	$('input:radio[name="flex2"]').change(function() {
    if ($(this).val()=='rb') {
      $('#flex2rb_select').attr('disabled', false);
      $('#flex2wr_select').attr('disabled', true);
      $('#flex2wr_select').val([]).trigger('change');
      $('#flex2te_select').attr('disabled', true);
      $('#flex2te_select').val([]).trigger('change');
    } else if ($(this).val()=='wr') {
      $('#flex2rb_select').attr('disabled', true);
      $('#flex2rb_select').val([]).trigger('change');
      $('#flex2wr_select').attr('disabled', false);
      $('#flex2te_select').attr('disabled', true);
      $('#flex2te_select').val([]).trigger('change');
    } else if ($(this).val()=='te') {
      $('#flex2rb_select').attr('disabled', true);
      $('#flex2rb_select').val([]).trigger('change');
      $('#flex2wr_select').attr('disabled', true);
      $('#flex2wr_select').val([]).trigger('change');
      $('#flex2te_select').attr('disabled', false);
    }
	});

	$( "#qb_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1
	});

	$('#qb_select').on('select2:select select2:unselect', function() {
	  $("#qb_count").text($(this).val().length);
	});

	$( "#rb_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 2
	});

	$('#rb_select').on('select2:select select2:unselect', function() {
	  $("#rb_count").text($(this).val().length);
	});

	$( "#wr_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 3
	});

	$('#wr_select').on('select2:select select2:unselect', function() {
	  $("#wr_count").text($(this).val().length);
	});

	$( "#te_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1
	});
	
	$('#te_select').on('select2:select select2:unselect', function() {
	  $("#te_count").text($(this).val().length);
	});

	$( "#k_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1
	});
	
	$('#k_select').on('select2:select select2:unselect', function() {
	  $("#k_count").text($(this).val().length);
	});

	$( "#def_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1
	});

	$('#def_select').on('select2:select select2:unselect', function() {
	  $("#def_count").text($(this).val().length);
	});

	$( "#flex1rb_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1,
	  disabled: true
	});

	$('#flex1rb_select').on('change', function() {
	  $("#flex1_count").text($(this).val().length);
	});

	$( "#flex1wr_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1,
	  disabled: true
	});

	$('#flex1wr_select').on('change', function() {
	  $("#flex1_count").text($(this).val().length);
	});

	$( "#flex1te_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1,
	  disabled: true
	});

	$('#flex1te_select').on('change', function() {
	  $("#flex1_count").text($(this).val().length);
	});

	$( "#flex2rb_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1,
	  disabled: true
	});

	$('#flex2rb_select').on('change', function() {
	  $("#flex2_count").text($(this).val().length);
	});

	$( "#flex2wr_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1,
	  disabled: true
	});

	$('#flex2wr_select').on('change', function() {
	  $("#flex2_count").text($(this).val().length);
	});


	$( "#flex2te_select" ).select2({
	  theme: "bootstrap",
	  maximumSelectionLength: 1,
	  disabled: true
	});

	$('#flex2te_select').on('change', function() {
	  $("#flex2_count").text($(this).val().length);
	});

});