class R11y < Formula
  desc "Extract readable content from web pages as Markdown"
  homepage "https://github.com/dazld/r11y"
  version "1.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dazld/r11y/releases/download/v1.0.7/r11y-macos-arm64"
      sha256 "d6de42ef1620a67a5eef34e50f51511e7302e9f60b2d120b7abebb55be89040a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dazld/r11y/releases/download/v1.0.7/r11y-linux-amd64"
      sha256 "c1ee5ac1ef47bf49abe8b734eeb1b1193aa53d1ce3a72f9e421c8fa38035f497"
    end
  end

  def install
    bin.install Dir["*"].first => "r11y"
  end

  test do
    assert_match "r11y v#{version}", shell_output("#{bin}/r11y --version")
  end
end
