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
- plugins=(git tmux nvm aliases npm yarn zsh-autosuggestions)
- https://github.com/zsh-users/zsh-autosuggestions
- nvm installation: https://github.com/nvm-sh/nvm
- zstyle ':omz:plugins:nvm' lazy yes
- export EDITOR='vim

tmux
- install with homebrew
- https://github.com/gpakosz/.tmux

neovim (version 7.0)
- .config/nvim
- install with homebrew
- this repo config

lazydocker: https://github.com/jesseduffield/lazydocker

lazygit: https://github.com/jesseduffield/lazygit

exa (ls replacement): https://github.com/ogham/exa

zoxide (smarter cd): https://github.com/ajeetdsouza/zoxide