class Xchtmlreport < Formula
  desc "XCTestHTMLReport: Xcode-like HTML report for Unit and UI Tests"
  homepage "https://github.com/XCTestHTMLReport/XCTestHTMLReport"
  url "https://github.com/XCTestHTMLReport/XCTestHTMLReport/archive/refs/tags/2.3.1.tar.gz"
  sha256 "d74a3d100ae71e663cdc99657c8903e4582b3cc22c479a10ce0e3184e733b6a9"
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
