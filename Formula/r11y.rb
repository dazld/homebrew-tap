class R11y < Formula
  desc "Extract readable content from web pages as Markdown"
  homepage "https://github.com/dazld/r11y"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dazld/r11y/releases/download/v1.0.6/r11y-macos-arm64"
      sha256 "bf3940f01c8acf01204f10031121a90f5b4a089beac7a12a6d7e617fe74a0458"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dazld/r11y/releases/download/v1.0.6/r11y-linux-amd64"
      sha256 "697a5d16b1626ce5dcd18d2e3e5280487843d7824ef27b39459716ac3c927307"
    end
  end

  def install
    bin.install Dir["*"].first => "r11y"
  end

  test do
    assert_match "r11y v#{version}", shell_output("#{bin}/r11y --version")
  end
end
