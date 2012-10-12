require 'yahoofinance'
require 'yaml'

config = YAML.load_file('settings.yml')

YahooFinance::get_quotes( YahooFinance::StandardQuote, config['stocks'].join(',') ) do |qt|
    puts "\nQUOTING: #{qt.symbol}"
    puts qt.to_s
end

YahooFinance::get_quotes( YahooFinance::ExtendedQuote, config['stocks'].join(',') ) do |qt|
    puts "\nQUOTING: #{qt.symbol}"
    puts qt.to_s
end
