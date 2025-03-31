function _tide_item_elixir
    type -q elixir || return
    path is $_tide_parent_dirs/mix.exs &&
        _tide_print_item elixir $tide_elixir_icon' ' (elixir --short-version)
end
