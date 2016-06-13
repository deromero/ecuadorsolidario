# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'Seeding the database'

puts 'Categories'

[
  {title: 'Accesorios para Vehículos'},
  {title: 'Animales y Mascotas'},
  {title: 'Objetos para Bebés'},
  {title: 'Celulares y Teléfonos'},
  {title: 'Computación'},
  {title: 'Deportes y Fitness'},
  {title: 'Electrodomésticos y Aires Ac.'},
  {title: 'Electrónica, Audio y Video'},
  {title: 'Hogar, Muebles y Jardín'},
  {title: 'Industrias y Oficinas'},
  {title: 'Instrumentos Musicales'},
  {title: 'Juegos y Juguetes'},
  {title: 'Libros, Materiales Educativos'},
  {title: 'Música, Películas y Series'},
  {title: 'Ropa y Accesorios'},
  {title: 'Salud y Belleza'},
  {title: 'Construcción'}
].each do |name|
    category = Category.find_or_initialize_by(title: name[:title])
    category.update_attributes({title: name[:title]})
  end
