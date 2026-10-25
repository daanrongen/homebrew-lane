class Lane < Formula
  desc "Keyboard-driven, GPU-rendered timeline of what your coding agents are doing"
  homepage "https://github.com/daanrongen/lane"
  # url, version and sha256 are updated by .github/workflows/update.yml
  url "https://github.com/daanrongen/lane/releases/download/v0.2.0/lane-0.2.0-macos-arm64.tar.gz"
  version "0.2.0"
  sha256 "3b64a709422d95375ba8bd86277c5684d0fb9433f42df5dafa001331e396dfa5"
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
