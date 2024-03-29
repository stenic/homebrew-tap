# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoUploader < Formula
  desc ""
  homepage "https://stenic.io"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stenic/go-uploader/releases/download/1.0.4/go-uploader_darwin_amd64.tar.gz"
      sha256 "ba0cda43f882d27e8b33ce376e3d1f2940e92825c9abf8abb3202aa7bd6d8b87"

      def install
        bin.install "go-uploader"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stenic/go-uploader/releases/download/1.0.4/go-uploader_darwin_arm64.tar.gz"
      sha256 "d00878b0f708ad6c02408b311e5252ebb5dca487ed3e884093ac571953beb36e"

      def install
        bin.install "go-uploader"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/stenic/go-uploader/releases/download/1.0.4/go-uploader_linux_armv6.tar.gz"
      sha256 "93b0e8d4d3ca04d81ab506021233e7b1d8a76c65c261f6f926636c6f312291d0"

      def install
        bin.install "go-uploader"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stenic/go-uploader/releases/download/1.0.4/go-uploader_linux_amd64.tar.gz"
      sha256 "dfabe6c786ba5c45bbb1c74fba44238c706d41f9328d4ad49ff0263afe7bf930"

      def install
        bin.install "go-uploader"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stenic/go-uploader/releases/download/1.0.4/go-uploader_linux_arm64.tar.gz"
      sha256 "ab45fb62261e4398db23463c5eec71ff5513b26814fc10ae49fb83cacbde5569"

      def install
        bin.install "go-uploader"
      end
    end
  end

  test do
    system "#{bin}/go-uploader -v"
  end
end
