class R11y < Formula
  desc "Extract readable content from web pages as Markdown"
  homepage "https://github.com/dazld/r11y"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dazld/r11y/releases/download/v1.1.0/r11y-macos-arm64"
      sha256 "45f868a84db8843a42c3dd135e29b4a9d06a51a915fa0f8d3733d0cb940547cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dazld/r11y/releases/download/v1.1.0/r11y-linux-amd64"
      sha256 "f6e55095031c91b5271a2bd215ba2c450697bbca5a2abfb6f962f5d809020d6b"
    end
    on_arm do
      url "https://github.com/dazld/r11y/releases/download/v1.1.0/r11y-linux-arm64"
      sha256 "9a10447648d9a0263196a2921b82d56ed4369f53b44a8c86a7e6981f810291db"
    end
  end

  def install
    bin.install Dir["*"].first => "r11y"
  end

  test do
    assert_match "r11y v#{version}", shell_output("#{bin}/r11y --version")
  end
end
