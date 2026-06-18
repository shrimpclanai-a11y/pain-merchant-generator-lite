{ pkgs, army_type ? "sapper", enable_remote_access ? false, ... }: {
  packages = [ pkgs.nodejs_22 ];
  bootstrap = ''
    # Create the output directory
    mkdir -p "$out"

    # Copy all common template files
    cp -rf ${./template-files}/* "$out/"
    
    # Copy all environment configurations to temporary location
    mkdir -p "$out/.idx"
    cp -rf ${./envs}/* "$out/.idx/"
    
    # Rename the selected one to dev.nix
    mv -f "$out/.idx/dev-${army_type}.nix" "$out/.idx/dev.nix"
    
    # Clean up the other environment configurations
    rm -f "$out/.idx/dev-fresh.nix" "$out/.idx/dev-sapper.nix" "$out/.idx/dev-lobster.nix"

    # Inject ENABLE_REMOTE_ACCESS env var based on user's checkbox selection
    ${if enable_remote_access then ''
      sed -i 's|TS_SOCKET = "/tmp/tailscaled.sock";|TS_SOCKET = "/tmp/tailscaled.sock";\n    ENABLE_REMOTE_ACCESS = "true";|' "$out/.idx/dev.nix"
    '' else ""}

    # Make all copied files writable by the user
    chmod -R u+w "$out"
  '';
}
