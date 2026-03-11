class Podkit < Formula
  desc "Sync music collections to iPod devices"
  homepage "https://github.com/jvgomg/podkit"
  version "0.1.0" # Updated automatically by CI
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "podkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/podkit --version")
  end
end
