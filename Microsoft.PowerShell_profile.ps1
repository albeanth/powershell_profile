# Oh my posh stuff
$env:VIRTUAL_ENV_DISABLE_PROMPT=1 # enable virtual env to be controlled by oh-my-posh
Import-Module -Name Terminal-Icons # make fancy ls icons and coloring
oh-my-posh init pwsh --config 'C:/Users/zprince/Documents/WindowsPowershell/posh_profile.json' | Invoke-Expression

# Shortcut for activating virtual environment
$env:VIRTUAL_ENV_DIR = 'C:\Users\zprince\codes\environments'
function activate {
    param (
        $venv
    )
    & "$env:VIRTUAL_ENV_DIR\$venv\Scripts\Activate.ps1"
}

# Translating bash commands
Set-PSReadLineKeyHandler -Key Tab -Function Complete # set tab complete to be bash like
set-alias open start # creates an alias to act like bash to open file browser
set-alias which Get-Command

# Other useful aliases
set-alias xtview 'C:/Tools/XTVIEW/XTVIEW.exe'
