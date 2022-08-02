1. Make config folder in dots/dotfiles.
2.  e.g 'mkdir -p ~/dots/dotfiles/bspwm/.config/'

  Move original config files from ~/.config/ to created folder above
    e.g 'mv ~/.config/bspwm ~/dots/dotfiles/bspwm/.config/'
    
  Stow it 'stow -vt ~ *'
  
  git add * ~/dots
  git commit
  git push
