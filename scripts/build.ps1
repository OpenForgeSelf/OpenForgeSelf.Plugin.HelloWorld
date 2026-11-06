# Build and test the HelloWorld example plugin. Run with pwsh, not Windows PowerShell 5.1.
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
dotnet test (Join-Path $root 'tests/Plugin.HelloWorld.Tests/Plugin.HelloWorld.Tests.csproj') --nologo
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
