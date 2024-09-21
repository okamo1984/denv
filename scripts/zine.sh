#! /bin/bash

gh repo clone kristoff-it/ziggy
gh repo clone kristoff-it/supermd
gh repo clone kristoff-it/superhtml

mkdir -p "$HOME"/bin

ln -s "$(pwd)"/ziggy/tree-sitter-ziggy/queries ~/.config/nvim/queries/ziggy
ln -s "$(pwd)"/ziggy/tree-sitter-ziggy-schema/queries ~/.config/nvim/queries/ziggy_schema
ln -s "$(pwd)"/supermd/editors/neovim/queries/supermd ~/.config/nvim/queries/supermd
ln -s "$(pwd)"/supermd/editors/neovim/queries/supermd_inline ~/.config/nvim/queries/supermd_inline
ln -s "$(pwd)"/superhtml/tree-sitter-superhtml/queries ~/.config/nvim/queries/superhtml

build() {
  local dir="$1"

  pushd ./"$dir" || exit
  zig build
  cp ./zig-out/bin/"$dir" "$HOME"/bin
  popd || exit
}

build ziggy
build superhtml
