require 'json';
require_relative '../student.rb';

module SerializationArray
  @@serializer = JSON

  def serialize(arr)
    res = [] 
    arr.each do |item|
      res << item.serialize
    end
    
    @@serializer.dump res
  end

  def file_path
    "SOLID/data/#{self.class.to_s.downcase}.json"
  end

  def write_data
    arr = take_array
    
    if File.exists?(file_path) then File.new(file_path) end
    file = File.open(file_path, 'w')
    seri_arr = serialize(arr)
    file.write(seri_arr)
    file.close
  end

  def read_data
    if File.exists?(file_path)
      add_list un_serialize(File.read(file_path))
    end
  end

  def un_serialize(string)
    obj = @@serializer.parse string
    arr = []
    obj.each do |item_string|
      item = create_item
      item.un_serialize(item_string)
      
      arr << item
    end
    arr
  end
end

