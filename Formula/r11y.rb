class R11y < Formula
  desc "Extract readable content from web pages as Markdown"
  homepage "https://github.com/dazld/r11y"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dazld/r11y/releases/download/v1.0.5/r11y-macos-arm64"
      sha256 "aeebea1cd20bd6128d465e416bd882cf0e533daebc5178403d29c25e629d9c68"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dazld/r11y/releases/download/v1.0.5/r11y-linux-amd64"
      sha256 "f58d2aab988017bfd61327eb52a42ac747b053478d5643cfdafbf2204deadb8b"
    end
  end

  def install
    bin.install Dir["*"].first => "r11y"
  end

  test do
    assert_match "r11y #{version}", shell_output("#{bin}/r11y --version")
  end
end
