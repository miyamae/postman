require 'csv'

class Settings < Settingslogic
  source File.dirname(__FILE__) + '/../config/application.yml'
end

class Application < Thor

  desc 'deliver <mail.txt> <address.csv>', 'Broadcast emails'
  option :test, type: :boolean
  def deliver(mail_file, address_file)
    if File.file?(mail_file) && File.file?(address_file)
      /^(?<header>.*?\n)\n(?<body>.*)$/m =~ File.open(mail_file).read
      mail = Mail.new(charset: Settings[:charset])
      mail.delivery_method(:smtp, Settings.smtp_options.symbolize_keys)
      CSV.table(address_file).each do |row|
        mail.header = render(header, row)
        mail.body = render(body, row)
        puts "\n" + '-' * 80
        puts mail
        mail.deliver! unless options[:test]
        sleep (Settings[:interval_ms] || 1000) / 1000
      end
    else
      STDERR.puts 'File not found.'
    end
  end

  private

  def render(text, vars)
    text.gsub(%r|{{\s*(.*)?\s*}}|) { |s| vars[$1.strip.to_sym].strip }
  end

end
