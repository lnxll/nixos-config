{pkgs, ...}:
{
  stylix = {
    enable = true;
    polarity = "dark";
    
    cursor = {
      name = "phinger-cursors-light";
      package = pkgs.phinger-cursors;
      size = 20;
    };

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrains Mono Nerd Font";
      };
      sansSerif = {
        package = pkgs.source-sans-pro;
        name = "Source Sans Pro";
      };
      serif = {
        package = pkgs.source-sans-pro;
        name = "Source Sans Pro";
      };
      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };
      sizes = {
        applications = 10;
        desktop = 10;
        popups = 10;
        terminal = 10;
      };
    };

    base16Scheme = {
      base00 = "09090B"; #09090B Default Background
      base01 = "1c1e1f"; #1c1e1f Lighter Background (Used for status bars, line number and folding marks)
      base02 = "313244"; #313244 Selection Background
      base03 = "45475a"; #45475a Comments, Invisibles, Line Highlighting
      base04 = "585b70"; #585b70 Dark Foreground (Used for status bars)
      base05 = "cdd6f4"; #cdd6f4 Default Foreground, Caret, Delimiters, Operators
      base06 = "f5e0dc"; #f5e0dc Light Foreground (Not often used)
      base07 = "b4befe"; #b4befe Light Background (Not often used)
      base08 = "f38ba8"; #f38ba8 Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
      base09 = "fab387"; #fab387 Integers, Boolean, Constants, XML Attributes, Markup Link Url
      base0A = "f9e2af"; #f9e2af Classes, Markup Bold, Search Text Background
      base0B = "a6e3a1"; #a6e3a1 Strings, Inherited Class, Markup Code, Diff Inserted
      base0C = "94e2d5"; #94e2d5 Support, Regular Expressions, Escape Characters, Markup Quotes
      base0D = "8771DA"; #8771DA Functions, Methods, Attribute IDs, Headings, Accent color
      base0E = "cba6f7"; #cba6f7 Keywords, Storage, Selector, Markup Italic, Diff Changed
      base0F = "f2cdcd"; #f2cdcd Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
    };

    # image = ../../wallpapers/3.jpg;
  };
}