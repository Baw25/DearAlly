CATEGORIE_LIST = "db/fixtures/categories.txt"
ALLY_LIST = "db/fixtures/allies.csv"
ALLY_CATEGORY_LIST = "db/fixtures/ally_category.csv"

Category.delete_all
Ally.delete_all
AllyCategory.delete_all

File.foreach(CATEGORIE_LIST) do |line|
  Category.create(title: line.chomp)
end


CSV.foreach(ALLY_LIST, headers: true, header_converters: :symbol) do |line|
  Ally.create(line.to_h)
end


CSV.foreach(ALLY_CATEGORY_LIST, headers: true, header_converters: :symbol) do |line|
  AllyCategory.create(line.to_h)
end

