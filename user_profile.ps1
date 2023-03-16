#Prompt
Import-Module posh-git
#Additionals
#Import-Module oh-my-posh
#Set-PoshPrompt Paradox

function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'takuya.omp.json'
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression