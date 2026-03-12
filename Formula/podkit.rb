class Podkit < Formula
  desc "Sync music collections to iPod devices"
  homepage "https://github.com/jvgomg/podkit"
  version "0.1.0" # Updated automatically by CI
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-arm64.tar.gz"
      sha256 "246f9f5bbf2892249392ad27d0d53ccbe06142805a09a9a5d56122a51de3b389"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-x64.tar.gz"
      sha256 "b4f0f943f9fc789d2c05b0863a50d998efe2dc9a16054460b4b4b424d906b4e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-arm64.tar.gz"
      sha256 "e06671d769a63ebc9f0cefdc3a5c67c00c5422531905aba3ea4f51308e8ac96a"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-x64.tar.gz"
      sha256 "e2f6d12681eeea3394e3c7b21dec3e3eb27372c5cf45c4b8b1c950812eb0b69a"
    end
  end

  def install
    bin.install "podkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/podkit --version")
  end
end
