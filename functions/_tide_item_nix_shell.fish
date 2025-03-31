function _tide_item_nix_shell
    set -q IN_NIX_SHELL || return

    set -l purity_icon
    if test $IN_NIX_SHELL = impure
        set -l purity_icon ' '
    else
        set -l purity_icon ' '
    end
    _tide_print_item nix_shell $tide_nix_shell_icon' '$purity_icon $name
end
