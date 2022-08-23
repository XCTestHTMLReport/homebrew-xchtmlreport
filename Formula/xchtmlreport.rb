class Xchtmlreport < Formula
  desc "XCTestHTMLReport: Xcode-like HTML report for Unit and UI Tests"
  homepage "https://github.com/XCTestHTMLReport/XCTestHTMLReport"
  url "https://github.com/XCTestHTMLReport/XCTestHTMLReport/archive/refs/tags/2.2.2.tar.gz"
  sha256 "1196676d621795d23c90288bf4988617972d6f185aa963951fc28f83240f1417"
  license "MIT"
  head "https://github.com/XCTestHTMLReport/XCTestHTMLReport.git", :branch => "main"

  depends_on :xcode => "12.5"

  def install
    system "swift build --disable-sandbox -c release"
    bin.install ".build/release/xchtmlreport"
  end

  test do
    system "./prepareTestResults.sh"
    system "swift test -v"
  end
end
