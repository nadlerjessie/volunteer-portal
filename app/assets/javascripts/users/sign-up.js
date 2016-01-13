$(document).ready(function(){
  $('.new-user-type-js').on('change', function(){
    var type = $('#user_volunteer option:selected').val()
    if (type == '0') {
      $('.volunteer-form-js').removeClass('hide');
      $('.organization-form-js').addClass('hide');
    } else if (type == '1') {
      $('.organization-form-js').removeClass('hide');
      $('.volunteer-form-js').addClass('hide');
    } else {
      $('.organization-form-js').addClass('hide');
      $('.volunteer-form-js').addClass('hide');
    }
  })
});