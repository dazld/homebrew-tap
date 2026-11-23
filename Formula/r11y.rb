class R11y < Formula
  desc "Extract readable content from web pages as Markdown"
  homepage "https://github.com/dazld/r11y"
  version "1.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dazld/r11y/releases/download/v1.0.9/r11y-macos-arm64"
      sha256 "d220b910c25ef6a6e9933b97ebb5e01f13300b9ca11d5bba1087b926cde105cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dazld/r11y/releases/download/v1.0.9/r11y-linux-amd64"
      sha256 "9e3e56d8420384d13e3ff2f182f7276b4eec58d937e08cde91cea2538fe966f3"
    end
    on_arm do
      url "https://github.com/dazld/r11y/releases/download/v1.0.9/r11y-linux-arm64"
      sha256 "fbc03325fdf872bb950460e7968c19ebf13a7fa0d74ca960ed46dd2cbcc7e8af"
    end
  end

  def install
    bin.install Dir["*"].first => "r11y"
  end

  test do
    assert_match "r11y v#{version}", shell_output("#{bin}/r11y --version")
  end
end
