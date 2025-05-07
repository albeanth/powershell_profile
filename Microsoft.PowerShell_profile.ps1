# oh-my-posh init pwsh | Invoke-Expression
set-alias open start # creates an alias to act like bash to open file browser
new-alias ll ls
new-alias which Get-Command
Set-PSReadLineKeyHandler -Key Tab -Function Complete # set tab complete to be bash like
$env:VIRTUAL_ENV_DISABLE_PROMPT=1 # enable virtual env to be controlled by oh-my-posh
Import-Module -Name Terminal-Icons # make fancy ls icons and coloring
oh-my-posh init pwsh --config 'C:/Users/aalberti/Documents/Powershell/posh_profile.json' | Invoke-Expression
