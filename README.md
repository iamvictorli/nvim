inspired from https://www.youtube.com/playlist?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ

Mac setup
System preferences > accessibility > display > reduce motion

homebrew
vlc

Font
Fira Code Nerd Font
https://www.nerdfonts.com/font-downloads

Terminal
- https://github.com/sindresorhus/terminal-snazzy
- curl https://raw.githubusercontent.com/sindresorhus/terminal-snazzy/master/Snazzy.terminal > Snazzy.terminal
- Cursor Block, no blinking cursor
- Use Fira Code Regular Nerd Font Complete Mono

ohmyzsh
- https://github.com/romkatv/powerlevel10k#oh-my-zsh (use minimal theme similar to https://github.com/sindresorhus/pure). May switch to https://starship.rs/
- zstyle ':omz:update' mode disabled
- plugins=(git tmux nvm aliases npm yarn zsh-autosuggestions zsh-syntax-highlighting)
- https://github.com/zsh-users/zsh-autosuggestions
- https://github.com/zsh-users/zsh-syntax-highlighting
- nvm installation: https://github.com/nvm-sh/nvm
- zstyle ':omz:plugins:nvm' lazy yes
- export EDITOR='vim

tmux
- install with homebrew
- https://github.com/gpakosz/.tmux

neovim (version 7.0)
- .config/nvim
- install with homebrew
- OR from releases if homebrew doesnt work
- this repo config

lazydocker: https://github.com/jesseduffield/lazydocker
- Add `alias lzd='lazydocker'` to .zshrc

lazygit: https://github.com/jesseduffield/lazygit
- Add `alias lg='lazygit'` to .zshrc

exa (ls replacement): https://github.com/ogham/exa
- Add `alias ll="exa -l -g --icons --git"` to .zshrc
- Add `alias llt="exa -1 --icons --tree --git-ignore"` to .zshrc

zoxide (smarter cd): https://github.com/ajeetdsouza/zoxide

trash-cli (safeguard rm): https://github.com/sindresorhus/trash-cli
- `npm install --global trash-cli@4.0.0`. version 5 sometimes runs into node issues, stick with version 4
- Add `alias rm=trash` to .zshrc