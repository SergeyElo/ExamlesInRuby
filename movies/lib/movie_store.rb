require 'yaml/store'  # загружаем класс YANL:: Store

class MovieStore

  def initialize(file_name)
    @store = YAML::Store.new(file_name)  # создаем хранилище для чтения/записи в файл с заданным именем
  end
  
  def find(id)             # этот метод находит объект Movie с заданным идентификатором id
    @store.trancaction do  # для работы с хранилищем необходим вызов transaction
      @store[id]           # возвращает объект Movie ассоциированный с ключом id
    end
  end
  
  def all                    # метод загружает все фильмы из хранилища
    @store.transaction do    # также необходим transaction
      @store.roots.map { |id| @store[id] }  # оздаем массив со всеми значениями по ключам
    end
  end        
  
  def save(movie)            # метод сохраняет объект Movie в хранилище
    @store.transaction do    # также необходим transaction
      unless movie.id        #  если фильму не присвоен идентификатор
        highest_id = @store.roots.max || 0  # находим наибольший ключ
        movie.id = highest_id + 1           # увеличиваем его на 1
      end
      @store[movie.id] = movie   # сохраняем фильм с ключом совпадающим с идентификатором
    end  
  end

end    
