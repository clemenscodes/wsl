{
  inputs,
  pkgs,
  config,
  system,
  lib,
  ...
}: {
  imports = [inputs.cymenixos.nixosModules.${system}.default];
  hardware = {
    graphics = {
      enable = lib.mkForce false;
    };
  };
  programs = {
    fuse = {
      userAllowOther = true;
    };
  };
  modules = {
    enable = true;
    machine = {
      kind = "wsl";
      name = "wsl";
    };
    wsl = {
      enable = true;
    };
    config = {
      enable = true;
      nix = {
        enable = true;
      };
    };
    users = {
      enable = true;
      wheel = true;
      user = "clemens";
    };
    fonts = {
      enable = true;
      defaultFont = "VictorMono Nerd Font";
      size = 8;
    };
    home-manager = {
      enable = true;
    };
    hostname = {
      enable = true;
      defaultHostname = "cymenix";
    };
    locale = {
      enable = true;
      defaultLocale = "de";
    };
    networking = {
      enable = true;
      dbus = {
        enable = true;
      };
      firewall = {
        enable = false;
      };
    };
    security = {
      enable = true;
      gnome-keyring = {
        enable = true;
      };
      gnupg = {
        enable = true;
      };
      polkit = {
        enable = true;
      };
      rtkit = {
        enable = true;
      };
      ssh = {
        enable = true;
      };
      sudo = {
        enable = true;
        noPassword = false;
      };
      tpm = {
        enable = true;
      };
    };
    shell = {
      enable = true;
      console = {
        enable = true;
      };
      environment = {
        enable = true;
      };
      ld = {
        enable = true;
      };
      zsh = {
        enable = true;
      };
    };
    themes = {
      enable = true;
      catppuccin = {
        enable = true;
        flavor = "macchiato";
        accent = "blue";
      };
    };
    performance = {
      enable = true;
    };
    time = {
      enable = true;
      defaultTimeZone = "Europe/Berlin";
    };
    xdg = {
      enable = true;
    };
  };
  home-manager = {
    users = {
      ${config.modules.users.user} = {
        modules = {
          enable = true;
          development = {
            enable = true;
            cargo = {
              enable = true;
            };
            direnv = {
              enable = true;
            };
            gh = {
              enable = true;
              plugins = {
                enable = true;
                gh-dash = {
                  enable = true;
                };
              };
            };
            git = {
              enable = true;
              userName = "Clemens Horn";
              userEmail = "clemens.horn@mni.thm.de";
              signing = {
                enable = false;
                gpgFingerprint = "52E30A92E24B09D5";
              };
            };
          };
          editor = {
            enable = true;
            defaultEditor = "nvim";
            nvim = {
              enable = true;
            };
          };
          explorer = {
            enable = true;
            defaultExplorer = "yazi";
            yazi = {
              enable = true;
            };
          };
          fonts = {
            enable = true;
          };
          monitoring = {
            enable = true;
            btop = {
              enable = true;
            };
            ncdu = {
              enable = true;
            };
          };
          security = {
            enable = true;
            gpg = {
              enable = false;
            };
            ssh = {
              enable = false;
            };
          };
          shell = {
            enable = true;
            nom = {
              enable = true;
            };
            nvd = {
              enable = true;
            };
            starship = {
              enable = true;
            };
            zoxide = {
              enable = true;
            };
            zsh = {
              enable = true;
            };
          };
          utils = {
            enable = true;
            bat = {
              enable = true;
            };
            fzf = {
              enable = true;
            };
            nix-prefetch-git = {
              enable = true;
            };
            nix-prefetch-github = {
              enable = true;
            };
            lsusb = {
              enable = true;
            };
            wget = {
              enable = true;
            };
            ripgrep = {
              enable = true;
            };
            tldr = {
              enable = true;
            };
            unzip = {
              enable = true;
            };
            zip = {
              enable = true;
            };
          };
          xdg = {
            enable = true;
          };
        };
      };
    };
  };
}
