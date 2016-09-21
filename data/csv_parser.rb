require 'csv'

module Data::CsvParser
  def get_data_from_csv(rel_file_path)
    CSV.read(rel_file_path, headers: true).map { |row| {date: row[0], value: row[1]} }
  end
end
