class Podkit < Formula
  desc "Modern sync for classic iPods"
  homepage "https://github.com/jvgomg/podkit"
  version "0.3.0" # Updated automatically by CI
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-arm64.tar.gz"
      sha256 "4170359baab844e5c6accfb1e41d8f661d7918c19706631cd8e1c9d0d02e0cdc"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-x64.tar.gz"
      sha256 "ac8622aae64080885331e1238feb17a063d03a0cd1a7a18b1bad26007b260a1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-arm64.tar.gz"
      sha256 "62e8dd214671324868ff34b31e6bb3f755ca886e918ac598f821cfbd7efbf37f"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-x64.tar.gz"
      sha256 "e7560c2c2d87248096fa92ba0b57d84d18cc80eb559397b9842e8822a5e76be1"
    end
  end

  def install
    bin.install "podkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/podkit --version")
  end
end
