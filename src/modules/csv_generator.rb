require 'json'
require "open-uri"
require 'csv'

def csv_generator
  path = FILE_PATH
  csv_file_path = "#{OUTPUT_PATH}/CSV_from_#{FILE_NAME}.csv"

  CSV.open(csv_file_path, 'w') do |csv|
    csv << ["name", "name_fr", "guide_price", "store_area_id"]
  end

  File.open(path).each do |line|
    ingredient = line.chomp

    url = "https://api.mymemory.translated.net/get?q=#{ingredient}&langpair=en|fr"
    trad_s = URI.open(url).read
    trad = JSON.parse(trad_s)

    row = ["#{ingredient}", "#{trad['responseData']['translatedText']}", 0, "#{STORE_AREA}"]


    CSV.open(csv_file_path, 'a') do |csv|
      csv << row
    end
  end
end
