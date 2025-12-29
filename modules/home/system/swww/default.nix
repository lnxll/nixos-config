{ pkgs, ... }:

{
  services.swww.enable = true;
  home.packages = [
    pkgs.sxiv
    (pkgs.writeShellScriptBin "lnxll_wallpaper" ''
      effects=("grow" "wave" "any")
      random_index=$(( RANDOM % ''${#effects[@]} ))

      wall_dir="$HOME/dotfiles/wallpapers"

      img="$(sxiv -tob -g 200x800 "$wall_dir" | awk -F'/' '{print $NF}')"

      [ -z "$img" ] && exit 0

      swww img -t "''${effects[random_index]}" "$wall_dir/$img"
    '')
  ];
}
