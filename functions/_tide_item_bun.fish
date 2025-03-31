function _tide_item_bun
    type -q bun || return
    if path is $_tide_parent_dirs/bun.lockb
        bun --version | string match -qr "(?<v>.*)"
        _tide_print_item bun $tide_bun_icon' ' $v
    end
end
