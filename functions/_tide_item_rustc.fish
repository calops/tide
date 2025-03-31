function _tide_item_rustc
    type -q rustc || return
    if path is $_tide_parent_dirs/Cargo.toml
        rustc --version | string match -qr "(?<v>[\d.]+)"
        _tide_print_item rustc $tide_rustc_icon' ' $v
    end
end
