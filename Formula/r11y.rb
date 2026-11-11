class R11y < Formula
  desc "Extract readable content from web pages as Markdown"
  homepage "https://github.com/dazld/r11y"
  version "1.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dazld/r11y/releases/download/v1.0.8/r11y-macos-arm64"
      sha256 "6ca8fa546187f1315b329623bb62f149a9f12166f6a1c115b35c680d0f5f07d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dazld/r11y/releases/download/v1.0.8/r11y-linux-amd64"
      sha256 "d87da9850b55066356f29b6e24bd954fc80c2b1f006670943863ea748e823a0e"
    end
    on_arm do
      url "https://github.com/dazld/r11y/releases/download/v1.0.8/r11y-linux-arm64"
      sha256 "77588222e6546c503c1f735e8030c9e178dfd20e16f34fed5a0d371cc1a50ce9"
    end
  end

  def install
    bin.install Dir["*"].first => "r11y"
  end

  test do
    assert_match "r11y v#{version}", shell_output("#{bin}/r11y --version")
  end
end
