require 'csv'

BALLOT_RETURNED_DATE = 'Ballot Returned Date'
BALLOT_MAILED_DATE = 'Ballot Mailed Date'

def introduction
  puts "This script is meant to replicate the results of greg on the right"
  puts "It is the responsibility of the user to obtain the data file"
end

def get_csv_filepath_from_user
  puts "What is the path  to the csv file?"
  gets.chomp
end

def get_csv_data(filepath)
  CSV.parse(File.open(filepath), headers: true)
end

def remove_blank_ballot_dates_from_csv_data(csv_data)
  csv_data.select do |row|
    row[BALLOT_RETURNED_DATE] !=nil &&
    row[BALLOT_MAILED_DATE] != nil
  end
end

def convert_date(a_date)
  parts = a_date.split('/')
  new_str = "#{parts[2]}-#{parts[0]}-#{parts[1]}"
  Date.parse(new_str)
end

def ballots_returned_before_mailed(csv_data)
  csv_data.select do |row|
    row[BALLOT_RETURNED_DATE] < row[BALLOT_MAILED_DATE]
  end
end

def ballots_returned_on_mailed_date(csv_data)
  csv_data.select do |row|
    row[BALLOT_RETURNED_DATE] == row[BALLOT_MAILED_DATE]
  end
end

#----MAIN------

introduction
filepath = get_csv_filepath_from_user
$raw_csv_data = get_csv_data(filepath)
non_nil_csv_data = remove_blank_ballot_dates_from_csv_data($raw_csv_data)
csv_dates_converted = non_nil_csv_data.map do |row|
                        row[BALLOT_RETURNED_DATE] = convert_date(row[BALLOT_RETURNED_DATE])
                        row[BALLOT_MAILED_DATE] = convert_date(row[BALLOT_MAILED_DATE])
                        row
                      end

$ballots_returned_before_mailed = ballots_returned_before_mailed(csv_dates_converted)
$ballots_returned_on_mailed_date =  ballots_returned_on_mailed_date(csv_dates_converted)

puts ""
puts "THESE ARE THE REULTS"
puts "Count of ballots returned before mailed-in date:  #{$ballots_returned_before_mailed.count}"
puts "Count of ballots returned on mailed-in date: #{$ballots_returned_on_mailed_date.count}"
puts "TOTAL COUNT ballots returned on-or-before-mailed-in-date: #{$ballots_returned_before_mailed.count +  $ballots_returned_on_mailed_date.count}"
puts ""
puts ""

