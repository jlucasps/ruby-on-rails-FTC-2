

function apply_mask() {
  $('input[data-mask]').each(function() {
      var input = $(this);
      input.setMask(input.data('mask'));
  });
}


$(function(){
  apply_mask();
});