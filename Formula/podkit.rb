class Podkit < Formula
  desc "Sync music collections to iPod devices"
  homepage "https://github.com/jvgomg/podkit"
  version "0.0.2" # Updated automatically by CI
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-arm64.tar.gz"
      sha256 "eb738bbfeda29a8ccaadc0ed59ff6bcc5acdd5feb95a026388e64eff72bac908"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-darwin-x64.tar.gz"
      sha256 "1088ede2dda52c4c1cd976684e833b185bf5cb94078176000d9d1a7abb591603"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-arm64.tar.gz"
      sha256 "e254e4156ccd05bcdc556ba05ccc7bca708bee09f260a03dadfd58075c305ebb"
    end
    on_intel do
      url "https://github.com/jvgomg/podkit/releases/download/podkit@#{version}/podkit-linux-x64.tar.gz"
      sha256 "fa7d2ddb8f1311f571f8aa9b375cceed6567860dc42e240472e9af66bc6eff0f"
    end
  end

  def install
    bin.install "podkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/podkit --version")
  end
end
