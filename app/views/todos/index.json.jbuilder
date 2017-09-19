json.array! @todos.each do |todo|
  json.id todo.id
  json.text todo.text
end