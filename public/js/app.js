$('.delete').on('click', function(e){
  var id = $(e.target).data('id');
  $.ajax({
    url: '/burrito/' + id,
    type: 'DELETE',
    success: function(result){
      console.log(result);
    }
  })
})

$('.update').on('click', function(e){
  var id = $(e.target).data('id');

  var name = $(e.target).closest('li').find('.name').val();
  var protein = $(e.target).closest('li').find('.protein').val();
  var wrapped = $(e.target).closest('li').find('.wrapped').val();
  var spicy_level = $(e.target).closest('li').find('.spicy_level').val();
  var price = $(e.target).closest('li').find('.price').val();
  $.ajax({
    url: '/burrito/' + id,
    type: 'PATCH',
    data: {
      name: name,
      protein: protein,
      wrapped: wrapped,
      spicy_level: spicy_level,
      price: price
    },
    success: function(response){
      console.log(response);
    }
  })
})
