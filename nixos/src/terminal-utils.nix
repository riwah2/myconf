{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    amfora # Fancy Terminal Browser For Gemini Prcol
    cowsay # Great Fun Terminal Program
    duf # Utility For Viewing Disk Usage In Terminal
    eza # Beautiful ls Replacement
    inxi # CLI System Information Tool
    killall # For Killing All Instances Of Programs
    lolcat # Add Colors To Your Terminal Command Output
    lshw # Detailed Hardware Information
    file
    ripgrep
    upx
    lazygit
    delta
    license-generator
    git-ignore
    gitleaks
    git-secrets
    pass-git-helper
    zellij
    topgrade
    rewrk
    rsync
    sd
    duf
    du-dust
    gh
    axel
    coreutils
    curl
    wget
    cmatrix
    pipes-rs
    rsclock
    cava
    cmake
    tinyxml-2
    dart-sass
    metar
    gowall
    overskride
  ];
}
