# $source = Join-Path $env:LOCALAPPDATA "\Logitech\Logitech Gaming Software"
# Updated LGHUB Path on 2020-07-07
$source = Join-Path $env:LOCALAPPDATA "\LGHUB\"
$parentPath = (get-item $PSScriptRoot).parent;
# $parentPath = ls "..\.";
# $dest = Join-Path $parentPath (Res"snippets\logitech-g-hub"
$dest = Resolve-Path "..\snippets\LGHUB"
Copy-Item $source\* $dest -force
Write-Output "Copy from ``$source`` to ``$dest`` Done."
# cd ..
# (cd ..\; git status);