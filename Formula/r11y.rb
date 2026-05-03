class R11y < Formula
  desc "Extract readable content from web pages as Markdown"
  homepage "https://github.com/dazld/r11y"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dazld/r11y/releases/download/v1.0.5/r11y-macos-arm64"
      sha256 "c569d82f3ada542a2e179f23e67cb0f4b7ed1a1462d4ccebc94a4af497e8692f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dazld/r11y/releases/download/v1.0.5/r11y-linux-amd64"
      sha256 "d758527928a055daf07d4b4a1fdfdcc79023971c824f7f57adf5b687f35d8bf9"
    end
  end

  def install
    bin.install Dir["*"].first => "r11y"
  end

  test do
    assert_match "r11y #{version}", shell_output("#{bin}/r11y --version")
  end
end
