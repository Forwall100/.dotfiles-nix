{ config, secrets, ... }:
{
  home.sessionVariables = {
    OPENROUTER_API_KEY = secrets.openrouterApiKey;
  };
}
