{ ... }:
{
  programs.zsh = {
    enable = true;

    shellAliases = {
      y = "yazi";
      wd = "wg-quick down /etc/wireguard/pcun.conf";
      wu = "wg-quick up /etc/wireguard/pcun.conf";
      nrs = "sudo nixos-rebuild switch --impure --flake ~/.dotfiles";
      hrs = "home-manager switch --impure --flake ~/.dotfiles";
      code = "codium";
      invest = "~/Documents/code/investtrack/.venv/bin/python3 ~/Documents/code/investtrack/invest_cli.py";
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
