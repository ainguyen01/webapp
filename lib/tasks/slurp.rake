namespace :slurp do
  desc "TODO"
  task copays: :environment do


  require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "copay.csv"))

  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

  csv.each do |row|
    c=Copay.new
    c.name = row["Drug Name"]
    c.pay_as_little_as= row["Pay as little as"]
    c.max_saving = row["Max savings"]
    c.cap= row["Limit"]
    c.url= row["Url"]
    c.user_id= row["User_id"]
    c.save
  end
  puts "there are now #{Copay.count}"
end
end
