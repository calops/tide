function _tide_item_crystal
    type -q crystal || return
    if path is $_tide_parent_dirs/shard.yml
        crystal --version | string match -qr "(?<v>[\d.]+)"
        _tide_print_item crystal $tide_crystal_icon' ' $v
    end
end
