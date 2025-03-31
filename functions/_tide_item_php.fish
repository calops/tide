function _tide_item_php
    type -q php || return
    if path is $_tide_parent_dirs/composer.json
        php --version | string match -qr "(?<v>[\d.]+)"
        _tide_print_item php $tide_php_icon' ' $v
    end
end
