class Awscli < Formula
  include Language::Python::Virtualenv

  desc "Official Amazon AWS command-line interface"
  homepage "https://aws.amazon.com/cli/"
  url "https://github.com/aws/aws-cli/archive/2.13.1.tar.gz"
  sha256 "3dbd9e998058a25c9ad3e71e48a1b8038b2d9dd96f6f2333f1a6c63706c51b39"
  license "Apache-2.0"
  head "https://github.com/aws/aws-cli.git", branch: "v2"

  bottle do
    sha256 cellar: :any,                 arm64_ventura:  "a60d33350c65a4899183f5d8283bbee04b12dbac2b3394ba9ad99ac345990731"
    sha256 cellar: :any,                 arm64_monterey: "0c0b54f02cd47affd2ac379cb77a9ad871a41c8d0f431332b3c9302e3c1d17cb"
    sha256 cellar: :any,                 arm64_big_sur:  "61cb0299c63bd6ae88344b173f511ece02b90898db234fd439956b4fbb7e329d"
    sha256 cellar: :any,                 ventura:        "7a9bc1a79ee67814640bcb8842dd8bd9d78a90f6b8f82e9656b35f948d945243"
    sha256 cellar: :any,                 monterey:       "bf45eaa8350338fad51f2b65b245aa48de03e90e4440c6a631ad0441b83c73f8"
    sha256 cellar: :any,                 big_sur:        "89577aab66d4cd4a95bbcd2cb17ddcd3424cf75464eccab700cc272a6c78f86e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "b063315d0f61ef76f4ebd6afa689a5d9642b0f27b771d2103a66fbf453df75f6"
  end

  # `pkg-config`, `rust`, and `openssl@3` are for cryptography.
  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "rust" => :build
  depends_on "cffi"
  depends_on "docutils"
  depends_on "openssl@3"
  depends_on "pycparser"
  depends_on "python@3.11"
  depends_on "six"

  uses_from_macos "mandoc"

  resource "awscrt" do
    url "https://files.pythonhosted.org/packages/24/73/d656729a61eceabbbf4fcee3b51bf298c5edbb0a5578542121150e957ee0/awscrt-0.16.16.tar.gz"
    sha256 "13075df2c1d7942fe22327b6483274517ee0f6ae765c4e6b6ae9ef5b4c43a827"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/15/d9/c679e9eda76bfc0d60c9d7a4084ca52d0631d9f24ef04f818012f6d1282e/cryptography-40.0.1.tar.gz"
    sha256 "2803f2f8b1e95f614419926c7e6f55d828afc614ca5ed61543877ae668cc3472"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/4b/89/eaa3a3587ebf8bed93e45aa79be8c2af77d50790d15b53f6dfc85b57f398/distro-1.8.0.tar.gz"
    sha256 "02e111d1dc6a50abb8eed6bf31c3e48ed8b0830d1ea2a1b78c61765c2513fdd8"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/4b/bb/75cdcd356f57d17b295aba121494c2333d26bfff1a837e6199b8b83c415a/prompt_toolkit-3.0.38.tar.gz"
    sha256 "23ac5d50538a9a38c8bde05fecb47d0b403ecd0662857a86f886f798563d5b9b"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "ruamel-yaml" do
    url "https://files.pythonhosted.org/packages/46/a9/6ed24832095b692a8cecc323230ce2ec3480015fbfa4b79941bd41b23a3c/ruamel.yaml-0.17.21.tar.gz"
    sha256 "8b7ce697a2f212752a35c1ac414471dc16c424c9573be4926b56ff3f5d23b7af"
  end

  resource "ruamel-yaml-clib" do
    url "https://files.pythonhosted.org/packages/d5/31/a3e6411947eb7a4f1c669f887e9e47d61a68f9d117f10c3c620296694a0b/ruamel.yaml.clib-0.2.7.tar.gz"
    sha256 "1f08fd5a2bea9c4180db71678e850b995d2a5f4537be0e94557668cf0f5f9497"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e2/7d/539e6f0cf9f0b95b71dd701a56dae89f768cd39fd8ce0096af3546aeb5a3/urllib3-1.26.16.tar.gz"
    sha256 "8f135f6502756bde6b2a9b28989df5fbe87c9970cecaa69041edcce7f0589b14"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/5e/5f/1e4bd82a9cc1f17b2c2361a2d876d4c38973a997003ba5eb400e8a932b6c/wcwidth-0.2.6.tar.gz"
    sha256 "a5220780a404dbe3353789870978e472cfe477761f06ee55077256e509b156d0"
  end

  def python3
    which("python3.11")
  end

  def install
    # Ensure that the `openssl` crate picks up the intended library.
    ENV["OPENSSL_DIR"] = Formula["openssl@3"].opt_prefix
    ENV["OPENSSL_NO_VENDOR"] = "1"

    # Temporary workaround for Xcode 14's ld causing build failure (without logging a reason):
    # ld: fatal warning(s) induced error (-fatal_warnings)
    # Ref: https://github.com/python/cpython/issues/97524
    ENV.append "LDFLAGS", "-Wl,-no_fixup_chains" if DevelopmentTools.clang_build_version >= 1400

    # The `awscrt` package uses its own libcrypto.a on Linux. When building _awscrt.*.so,
    # Homebrew's default environment causes issues, which may be due to `openssl` flags.
    # This causes installation to fail while running `scripts/gen-ac-index` with error:
    # ImportError: _awscrt.cpython-39-x86_64-linux-gnu.so: undefined symbol: EVP_CIPHER_CTX_init
    # As workaround, add relative path to local libcrypto.a before openssl's so it gets picked.
    if OS.linux?
      python_version = Language::Python.major_minor_version(python3)
      ENV.prepend "CFLAGS", "-I./build/temp.linux-x86_64-#{python_version}/deps/install/include"
      ENV.prepend "LDFLAGS", "-L./build/temp.linux-x86_64-#{python_version}/deps/install/lib"
    end

    virtualenv_install_with_resources
    pkgshare.install "awscli/examples"

    rm bin.glob("{aws.cmd,aws_bash_completer,aws_zsh_completer.sh}")
    bash_completion.install "bin/aws_bash_completer"
    zsh_completion.install "bin/aws_zsh_completer.sh"
    (zsh_completion/"_aws").write <<~EOS
      #compdef aws
      _aws () {
        local e
        e=$(dirname ${funcsourcetrace[1]%:*})/aws_zsh_completer.sh
        if [[ -f $e ]]; then source $e; fi
      }
    EOS
  end

  def caveats
    <<~EOS
      The "examples" directory has been installed to:
        #{HOMEBREW_PREFIX}/share/awscli/examples
    EOS
  end

  test do
    assert_match "topics", shell_output("#{bin}/aws help")
    site_packages = libexec/Language::Python.site_packages(python3)
    assert_includes Dir[site_packages/"awscli/data/*"], "#{site_packages}/awscli/data/ac.index"
  end
end
