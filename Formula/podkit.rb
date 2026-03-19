class Podkit < Formula
  desc "Modern sync for classic iPods"
  homepage "https://github.com/jvgomg/podkit"
  version "0.5.1" # Updated automatically by CI
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-arm64.tar.gz"
      sha256 "64695dc0ecafc73e89753d459826dabf82bcc33314debd77a4d233392eb20da9"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-x64.tar.gz"
      sha256 "a434215b7ebc966bd24b57d1ae3e01b455382c72868a38e2740b988253ca7eaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-arm64.tar.gz"
      sha256 "217558cb3a0f921bb2cc33fd237c27de285b186ec165510ac71361324608ae76"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-x64.tar.gz"
      sha256 "f60b11d48fee874830c4170d0d1de4cfb804912e9b1db4d347c6f72f1e443111"
    end
  end

  def install
    bin.install "podkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/podkit --version")
  end
end
