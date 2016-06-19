$(document).ready(function(){
  if($('#category-list').length){
    load_categories($('#category-list'));
    //cargar categorias


  }
});


var load_categories = function($elem){
  var url = getJsonRoute(Routes.categories_path());
  $.get(url,{})
      .done(function(response){
        $elem.html(JST['categories/index'](response));
      });
}
