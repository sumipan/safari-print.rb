require "safari/print/version"
require "tempfile"
require "erb"

module Safari
  module Print
    include FileUtils

    def self.print(printer=1)

      html = yield

      temp_html_file = Tempfile.open(['safari-print-', '.html'])
      temp_html_file.write html
      temp_html_file.close

      applescript = File.expand_path('../../../bin/PrintSafari.scpt', __FILE__)

      system("/usr/bin/open /Applications/Safari.app 'file:///#{temp_html_file.path}'")

      sleep 5

      system("/usr/bin/osascript #{applescript} #{printer}")
      
      sleep 10
    end
  end
end
