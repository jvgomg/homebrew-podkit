class Podkit < Formula
  desc "Sync music collections to iPod devices"
  homepage "https://github.com/jvgomg/podkit"
  version "0.0.3" # Updated automatically by CI
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-arm64.tar.gz"
      sha256 "d0242788652afb4dca25ea74dda74fd0ae9041a0f1947da650b1abdb629bd9f4"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-x64.tar.gz"
      sha256 "a666d0e3aff1f03a1b827639c764e25b2d326654fe62df3f6fc86dbc60cb6968"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-arm64.tar.gz"
      sha256 "517c303ffdb5783d63384cc1bbcc4018327d86d46331c7764fee1eaf184fd9c8"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-x64.tar.gz"
      sha256 "e9e26e0e4af3cbff3ff29c4d4ae7509b217f5f4522fdf97e797ffb261920be0a"
    end
  end

  def install
    bin.install "podkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/podkit --version")
  end
end
