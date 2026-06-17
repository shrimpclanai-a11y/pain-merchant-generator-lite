{ pkgs, army_type ? "sapper", ... }: {
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
    
    # Make all copied files writable by the user
    chmod -R u+w "$out"
  '';
}
