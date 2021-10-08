class Xchtmlreport < Formula
    desc "XCTestHTMLReport: Xcode-like HTML report for Unit and UI Tests"
    homepage "https://github.com/XCTestHTMLReport/XCTestHTMLReport"
    url "https://github.com/XCTestHTMLReport/XCTestHTMLReport/archive/2.2.0.tar.gz"
    sha256 "bc422443945255ed03a0af6e3f72ed342dd0d1b74dd0d641e6dd773aa6195823"
    head "https://github.com/XCTestHTMLReport/XCTestHTMLReport.git", :branch => "main"
  
    def install
      system "swift build --disable-sandbox -c release"
      bin.install ".build/release/xchtmlreport"
    end
  end
