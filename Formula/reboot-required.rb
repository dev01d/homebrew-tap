# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RebootRequired < Formula
  desc "Check if a reboot is required"
  homepage "https://github.com/dev01d/reboot-required"
  version "1.0.0"
  depends_on :linux

  on_intel do
    if Hardware::CPU.is_64_bit?
      url "https://github.com/dev01d/reboot-required/releases/download/1.0.0/reboot-required_Linux_x86_64.tar.gz"
      sha256 "c9a674b1c035cb8916d90e5629804b17be9aee00818fdd7b988bde695d6528e3"

      def install
        bin.install "rr"
      end
    end
  end
  on_arm do
    if Hardware::CPU.is_64_bit?
      url "https://github.com/dev01d/reboot-required/releases/download/1.0.0/reboot-required_Linux_arm64.tar.gz"
      sha256 "053c1013a012f1333f8c8b0b6230d8b28e1c6860e9f161839d080bc4c1ed0a7d"

      def install
        bin.install "rr"
      end
    end
  end

  test do
    system "#{bin}/rr --version"
  end
end
