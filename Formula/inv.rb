# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Inv < Formula
  desc "A formatted investigation tool"
  homepage "https://github.com/dev01d/inv"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dev01d/inv/releases/download/1.0.0/inv_1.0.0_darwin_arm64.tar.gz"
      sha256 "0a62b4a8eb4de6cae295d8d52c00e0dcd1485efecc13c95fb0219472a5d45199"

      def install
        bin.install "inv"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dev01d/inv/releases/download/1.0.0/inv_1.0.0_darwin_x86_64.tar.gz"
      sha256 "a23dc0dc174bf3ffff31807e165e0223f9079dff016ada2d76e00fe9e41b97f9"

      def install
        bin.install "inv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dev01d/inv/releases/download/1.0.0/inv_1.0.0_linux_x86_64.tar.gz"
      sha256 "ef001c61ba89fbdb1d5f353ca3c98bac27d5cc8ce3e23374b3637ed4b45b860b"

      def install
        bin.install "inv"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dev01d/inv/releases/download/1.0.0/inv_1.0.0_linux_arm64.tar.gz"
      sha256 "5f9d0d3d8c898eb16b36c8ee86f54fafa1b81a3aad502a583ce88168f53a0365"

      def install
        bin.install "inv"
      end
    end
  end

  test do
    system "#{bin}/inv --version"
  end
end
