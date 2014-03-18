jQuery(function() {
  $('.activities').on('click', '.add-activity-link', function(e){
    e.preventDefault();
    var partial = $(this).data('partial');
    partial = partial.replace(/uniq_id/g, 'uniq_id' + Date.now());
    $('.activities-box').append(partial);
  });

  $('.activities-box').on('click', '.btn-remove', function(e){
    e.preventDefault();
    $(this).parents('.activity-box').find('.destroy').val('1');
    $(this).parents('.activity-box').hide();
  });
});
