class Podkit < Formula
  desc "Modern sync for classic iPods"
  homepage "https://github.com/jvgomg/podkit"
  version "0.2.0" # Updated automatically by CI
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-arm64.tar.gz"
      sha256 "16fcab7ae7b751dd2ca8c65abf21cd042fbe048a0d6cad0c591766f307fdfb33"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-x64.tar.gz"
      sha256 "3e232a9ae1d66061ee09f9ea7451db8062f1f5816b9d86a183861580c0178a97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-arm64.tar.gz"
      sha256 "60a17e61caf2ad0b3c6a59078c1566ad2b5d40325b193c5ca03294949451311c"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-x64.tar.gz"
      sha256 "7dc87508c07b0650a7a0bd1c3fb1599e4ab926eff2e5d2a612541cc1ff3c88e1"
    end
  end

  def install
    bin.install "podkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/podkit --version")
  end
end
