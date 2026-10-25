class Lane < Formula
  desc "Keyboard-driven, GPU-rendered timeline of what your coding agents are doing"
  homepage "https://github.com/daanrongen/lane"
  # url, version and sha256 are updated by .github/workflows/update.yml
  url "https://github.com/daanrongen/lane/releases/download/v0.1.0/lane-0.1.0-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  # strip would corrupt the payload appended to the compiled binary
  skip_clean "libexec/lane"

  def install
    libexec.install "bin/lane"
    bin.install_symlink libexec/"lane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lane --version")
  end
end
