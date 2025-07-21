{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      ms-python.python
      ms-python.black-formatter
      saoudrizwan.claude-dev
      svelte.svelte-vscode
      vue.volar
      bradlc.vscode-tailwindcss
      myriad-dreamin.tinymist
      tomoki1207.pdf
      pkief.material-icon-theme
      enkia.tokyo-night
    ];
    userSettings = {
      "editor.fontFamily" = "CaskaydiaCove Nerd Font";
      "editor.fontSize" = 15;
      "editor.fontLigatures" = true;
      "editor.lineHeight" = 1.8;
      "workbench.tree.indent" = 14;
      "editor.lineNumbers" = "relative";
      "explorer.confirmDelete" = false;
      "explorer.confirmDragAndDrop" = false;
      "workbench.sideBar.location" = "right";
      "workbench.statusBar.visible" = false;
      "editor.scrollbar.horizontal" = "hidden";
      "editor.scrollbar.vertical" = "hidden";
      "editor.minimap.enabled" = true;
      "breadcrumbs.enabled" = false;
      "workbench.activityBar.location" = "hidden";
      "chat.commandCenter.enabled" = false;
      "explorer.decorations.badges" = false;
      "scm.diffDecorations" = "none";
      "editor.tabSize" = 4;
      "editor.detectIndentation" = false;
      "editor.multiCursorModifier" = "ctrlCmd";
      "workbench.tips.enabled" = false;
      "files.insertFinalNewline" = true;
      "editor.showFoldingControls" = "never";
      "editor.lightbulb.enabled" = "off";
      "workbench.tree.enableStickyScroll" = false;
      "files.autoSave" = "afterDelay";
      "extensions.ignoreRecommendations" = true;
      "window.commandCenter" = false;
      "workbench.layoutControl.enabled" = false;
      "window.menuBarVisibility" = "compact";
      "workbench.colorTheme" = "Tokyo Night";
      "git.confirmSync" = false;
      "svelte.ask-to-enable-ts-plugin" = false;
      "workbench.iconTheme" = "material-icon-theme";
      "window.zoomLevel" = 1;
      "database-client.autoSync" = true;
      "workbench.startupEditor" = "none";
      "git.openRepositoryInParentFolders" = "always";
      "[html]" = {
        "editor.defaultFormatter" = "mohd-akram.vscode-html-format";
      };
      "glassit.alpha" = 100;
      "vscode_vibrancy.disableFramelessWindow" = true;
      "vscode_vibrancy.enableAutoTheme" = true;
      "vscode_vibrancy.opacity" = 0.5;
      "security.workspace.trust.untrustedFiles" = "open";
    };
  };
}
