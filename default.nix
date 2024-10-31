{
  naersk,
  libllvm,
  pkg-config,
  openssl,
  libclang,
  pam,
  rustPlatform,
  callPackage,
  rust-bin,
  ...
}: let
  toolchain = rust-bin.fromRustupToolchainFile ./rust-toolchain.toml;

  naersk' = callPackage naersk {
    cargo = toolchain;
    rustc = toolchain;
  };

  nativeBuildInputs = [
    toolchain
    libllvm
    pkg-config
    openssl
    libclang
    pam
    rustPlatform.bindgenHook
  ];
in
  naersk'.buildPackage {
    src = ./.;
    inherit nativeBuildInputs;
  }
