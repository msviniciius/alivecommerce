// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery2
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require jquery.mask
//= require chosen-jquery
//= require cocoon
//= require bootstrap-multiselect
//= require bootstrap-sprockets
//= require bootstrap3-typeahead
//= require adminLTE/adminlte

//= require query.dataTables
//= require datatables/dataTables.bootstrap
//= require datatables/dataTables.responsive

//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.pt-BR
//= require moment
//= require moment/pt-br
//= require bootstrap-datetimepicker

//= require summernote
//= require summernote/lang/summernote-pt-BR

//= require_tree .

function display_fields(link) {
  if ($(link).hasClass("fa-plus")) {
    $(link).removeClass("fa-plus");
    $(link).addClass("fa-minus");
  } else {
    $(link).removeClass("fa-minus");
    $(link).addClass("fa-plus");
  }
  $(link).parent().next().toggle("fast");
}
