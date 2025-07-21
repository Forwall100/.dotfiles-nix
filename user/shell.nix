{ ... }:
{
  programs.zsh = {
    enable = true;

    shellAliases = {
      y = "yazi";
      wd = "wg-quick down /etc/wireguard/pcun.conf";
      wu = "wg-quick up /etc/wireguard/pcun.conf";
      nrs = "sudo nixos-rebuild switch --flake ~/.dotfiles";
      hrs = "home-manager switch --flake ~/.dotfiles";
      code = "codium";
    };

    initContent = ''
    autoload -Uz compinit promptinit
    compinit
    promptinit
    zstyle ':completion:*' menu select

    bindkey "^[[1;5C" forward-word
    bindkey "^[[1;5D" backward-word

    prompt redhat
    '';
  };
}
