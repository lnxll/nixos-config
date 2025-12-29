{pkgs, ...}:
{
  fonts = {
    packages = with pkgs; [
      roboto
      dejavu_fonts
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      font-awesome
      material-icons
      jetbrains-mono
    ];
  };
}