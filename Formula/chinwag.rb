# Copyright 2026 Emun Labs, Inc.
# 1401 Lavaca St STE 81335, Austin, TX 78701
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

class Chinwag < Formula
  desc "Local-first multi-agent coordination bus, atomic lease engine & flight recorder"
  homepage "https://github.com/emunlabs/chinwag"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/emunlabs/chinwag/releases/download/v0.1.0-genesis/chinwag-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "297d41e02107b8dc9b1f0fa1ab8326118b8b89a626089459e5524bf69d3c5c57"
    end
  end

  def install
    bin.install "bin/chinwag"
    bin.install_symlink "chinwag" => "git-chinwag"
    bin.install_symlink "chinwag" => "gh-chinwag"
    bin.install_symlink "chinwag" => "git-emun"
    bin.install_symlink "chinwag" => "gh-emun"

    prefix.install "LICENSE", "README.md", "SOURCE.json", "DEPENDENCIES.json",
                   "NOTICES.json", "NOTICE-SCOPE.txt", "manifest.json"
    prefix.install "notices" if File.directory?("notices")
  end

  test do
    assert_match "chinwag", shell_output("#{bin}/chinwag --version")
    assert_match "Usage: git chinwag", shell_output("#{bin}/git-chinwag --help")
    assert_match "Usage: gh chinwag", shell_output("#{bin}/gh-chinwag --help")
  end
end
