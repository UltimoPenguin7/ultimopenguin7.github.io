$source = Join-Path $env:LOCALAPPDATA "\Logitech\Logitech Gaming Software"
$parentPath = (get-item $PSScriptRoot).parent;
# $parentPath = ls "..\.";
# $dest = Join-Path $parentPath (Res"snippets\logitech-g-hub"
$dest = Resolve-Path "..\snippets\logitech-g-hub"
Copy-Item $source $dest -force
Write-Output "Copy from ``$source`` to ``$dest`` Done."
cd ..
git status