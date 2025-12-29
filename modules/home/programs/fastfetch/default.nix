{pkgs, ...}: 
{
  home.packages = with pkgs; [ fastfetch ];
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = ./logos/1.txt;
        padding = {
        top = 2;
        right = 2;
        left = 2;
        };
      };
      modules = [  
        "break"
        {
            type = "custom";
            format = "┌──────────────────────Hardware──────────────────────┐";
        }
        {
            type = "host";
            key = " PC";
            keyColor = "green";
        }
        {
            type = "cpu";
            key = "│ ├";
            showPeCoreCount = true;
            keyColor = "green";
        }
        {
            type = "gpu";
            key = "│ ├󰍛";
            keyColor = "green";
        }
        {
            type = "memory";
            key = "│ ├󰍛";
            keyColor = "green";
        }
        {
            type = "disk";
            key = "└ └";
            keyColor = "green";
        }
        {
            type = "custom";
            format = "└────────────────────────────────────────────────────┘";
        }
        "break"
        {
            type = "custom";
            format = "┌──────────────────────Software──────────────────────┐";
        }
        {
            type = "os";
            key = " OS";
            keyColor = "yellow";
        }
        {
            type = "kernel";
            key = "│ ├";
            keyColor = "yellow";
        }
        {
            type = "packages";
            key = "│ ├󰏖";
            keyColor = "yellow";
        }
        {
            type = "shell";
            key = "└ └";
            keyColor = "yellow";
        }
        "break"
        {
            type = "de";
            key = " DE";
            keyColor = "blue";
        }
        {
            type = "lm";
            key = "│ ├";
            keyColor = "blue";
        }
        {
            type = "wm";
            key = "│ ├";
            keyColor = "blue";
        }
        {
            type = "wmtheme";
            key = "│ ├󰉼";
            keyColor = "blue";
        }
        {
            type = "gpu";
            key = "└ └󰍛";
            format = "{3}";
            keyColor = "blue";
        }
        {
            type = "custom";
            format = "└────────────────────────────────────────────────────┘";
        }
        "break"
      ];
    };
  };
}