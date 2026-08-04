class Podkit < Formula
  desc "Modern sync for classic iPods"
  homepage "https://github.com/jvgomg/podkit"
  version "0.6.0" # Updated automatically by CI
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-arm64.tar.gz"
      sha256 "e2c463baae9cc768a6b9aba308ab725c028e1fe811302dd2244784897f978299"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-x64.tar.gz"
      sha256 "4239a00ae59ec7fd9cd04ebae0bfc306bca6bf9168db27f1c87e4b1e7bc7c512"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-arm64-gnu.tar.gz"
      sha256 "f5fc404dece451c76b81d2582452f39371ed36e0462066329bf6ab06c93c7e1e"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-x64-gnu.tar.gz"
      sha256 "b9424e8943df1e7aba08bf76b0bfcbcb9a3791be71963d082a5eb55f14d752ea"
    end
  end

  def install
    bin.install "podkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/podkit --version")
  end
end
