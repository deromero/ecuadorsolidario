$(document).ready(function(){
  if($('#category-list').length){
    load_categories();
    //cargar categorias


  }
});


var load_categories = function(){
  var url = getJsonRoute(Routes.categories_path());
  $.get(url,{})
      .done(function(response){
        alert("data loaded");
      });
}
