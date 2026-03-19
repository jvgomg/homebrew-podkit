class Podkit < Formula
  desc "Modern sync for classic iPods"
  homepage "https://github.com/jvgomg/podkit"
  version "0.5.0" # Updated automatically by CI
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-arm64.tar.gz"
      sha256 "8cb06d23db10d8a725f64de6d1b361695e6082f7950912871aa1ae77c6955957"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-x64.tar.gz"
      sha256 "821885d3226f67c5fdf8bf0521e9084f342ba434c6833581f98b056993045c6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-arm64.tar.gz"
      sha256 "c44c855374698ff2a10826dcfb26dc99ef9ec6fb96c68635a8801fb7cd3f6f73"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-x64.tar.gz"
      sha256 "b1d517aabff0476eb22a55fc83e10c033aca150bcf9663a0ec3c62b20cfe3f81"
    end
  end

  def install
    bin.install "podkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/podkit --version")
  end
end
