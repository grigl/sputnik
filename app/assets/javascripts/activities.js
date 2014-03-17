jQuery(function() {
  $('.ucare-box').on('click', 'li.uploadcare-widget-buttons-remove', function(){
    $(this).parents('.ucare-box').find('.destroy').val('1');
    $(this).parents('.ucare-box').hide();
  });

  $('.photos').on('click', '.add-photo-link', function(e){
    e.preventDefault();
    var partial = $(this).data('partial');
    partial = partial.replace('activity[activity_photos_attributes][', 'activity[activity_photos_attributes][' + Date.now());
    partial = partial.replace('activity_activity_photos_attributes_', 'activity_activity_photos_attributes_' + Date.now());
    $('.photos-box').append(partial);
  });

  $('.lists').on('click', '.add-to-list-link', function(e){
    e.preventDefault();
    var partial = $(this).data('partial');
    partial = partial.replace(/uniq_id/g, 'uniq_id' + Date.now());
    $('.lists-box').append(partial);
  });

  $('.list-box').on('click', '.btn-remove', function(e){
    e.preventDefault();
    $(this).parents('.list-box').find('.destroy').val('1');
    $(this).parents('.list-box').hide();
  });
});
