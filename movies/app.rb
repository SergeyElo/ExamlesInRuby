# Этот файл содержит основной код приложения, здесь все маршруты Sinatra
require 'sinatra'
require 'movie'
require 'movie_store'

# создаём экземпляр для работы с файлом movies.yml
store = MovieStore.new('movies.yml')

get('/movies') do
  @movies = store.all  # загружаем все объекты movie из файла movies.yml
  erb :index           # вставляем данные фильмов в разметку HTML из шаблона views/index.erb
end                    # и возвращаем результат 

get('/movies/new') do  # возвращаем разметку HTML в views/new/erb
  erb :new
end
    
post('/movies/create') do  # сюда передаются отправленные данные формы
  @movie = Movie.new       # создаём объект для сохранения данных формы
  @movie.title = params['title']        # данные 
  @movie.director = params['director']  # формы 
  @movie.year = params['year']          # добавляются в объект
  store.save(@movie)            # Сохраняем объект
  redirect '/movies/new'  # отображаем новую пустую форму
end

get('/movies/:id') do       
  id = params['id'].to_i    # параметр id преобразуем в целое число
  @movie = store.find(id)   # используем идентификатор для загрузки фильмов из хранилища
  erb :show                 # встариваем данные фильма в разметку HTML мз show.erb 
end                         # и возвращаем результат браузеру
  

  
