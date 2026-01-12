{config, ...}:
{
  config = {
    stylix.targets.firefox.profileNames = [ 
      "default"
    ];
    programs.firefox = {
      enable = true;

      profiles = {
        default = {
          id = 0;
          name = "default";
          isDefault = true;
          settings = {
            "browser.compactmode.show" = true;
          };
        };
      };

      policies = {
        AllowFileSelectionDialogs = true;
        AppAutoUpdate = false;
        DisableAppUpdate = true;
        BackgroundAppUpdate = false;
    
        AutofillAddressEnabled = false;
        AutofillCreditCardEnabled = false;

        DisableFirefoxAccounts = true;
        DisableFirefoxStudies = true;
        # DisableFormHistory = true;
        DisablePocket = true;
        DisablePrivateBrowsing = false;
        DisableProfileImport = false;
        DisableTelemetry = true;
        DisableFeedbackCommands = true;
        DontCheckDefaultBrowser = true;
        EnableTrackingProtection = {
          Value = true;
          Locked = true;
          Cryptomining = true;
          Fingerprinting = true;
        };
        FirefoxHome = {
          Search = true;
          TopSites = false;
          SponsoredTopSites = false;
          Highlights = false;
          Pocket = false;
          SponsoredPocket = false;
          Snippets = false;
          Locked = false;
        };
        NoDefaultBookmarks = true;
        PasswordManagerEnabled = false;

        UserMessaging = {
          ExtensionRecommendations = false;
          SkipOnboarding = true;
        };

        ExtensionSettings = {
          # default_area: navbar / menupanel
          
          
          "uBlock0@raymondhill.net" = {
            private_browsing = true;
            default_area = "navbar";
            installation_mode = "force_installed";
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          };
          # TWP
          "{036a55b4-5e72-4d05-a06c-cba2dfcc134a}" = {
            private_browsing = true;
            default_area = "navbar";
            installation_mode = "force_installed";
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/traduzir-paginas-web/latest.xpi";
          };
          # Vimium
          "{d7742d87-e61d-4b78-b8a1-b469842139fa}" = {
            private_browsing = true;
            default_area = "navbar";
            installation_mode = "force_installed";
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/vimium-ff/latest.xpi";
          };
        };
      };
    };
  };
}