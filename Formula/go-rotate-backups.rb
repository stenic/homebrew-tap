# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoRotateBackups < Formula
  desc ""
  homepage "https://stenic.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stenic/go-rotate-backups/releases/download/1.0.0/go-rotate-backups_darwin_amd64.tar.gz"
      sha256 "0f903df99958e3e006421c90904ed151fe8e04dee5ac26755178e6c8cd239d46"

      def install
        bin.install "go-rotate-backups"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stenic/go-rotate-backups/releases/download/1.0.0/go-rotate-backups_darwin_arm64.tar.gz"
      sha256 "f5df3c0ea9ebc88e79aa19a562fcb36629e4a771b14d301e5dd9d2ea0f2ddb7e"

      def install
        bin.install "go-rotate-backups"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/stenic/go-rotate-backups/releases/download/1.0.0/go-rotate-backups_linux_armv6.tar.gz"
      sha256 "1dca333ca5b5fefc6c147b4052352ce6a78a54f2d27caf9a7a296915992fc03c"

      def install
        bin.install "go-rotate-backups"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stenic/go-rotate-backups/releases/download/1.0.0/go-rotate-backups_linux_arm64.tar.gz"
      sha256 "926b4c0fa0e547f5b25436d306f6bfc48e6f7f9e2d42fc4c2dfd812a2a20760b"

      def install
        bin.install "go-rotate-backups"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stenic/go-rotate-backups/releases/download/1.0.0/go-rotate-backups_linux_amd64.tar.gz"
      sha256 "230ca7fac1ecedc19ffc114e99586900250799b7d8b0edb268d54346dc1ca797"

      def install
        bin.install "go-rotate-backups"
      end
    end
  end

  test do
    system "#{bin}/go-rotate-backups -v"
  end
end
