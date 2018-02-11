function Out-FileUTF8WithoutBOM {
    [CmdletBinding()]
    param(
        # String to save as a UTF-8 encoded file with no BOM
        [Parameter(ValueFromPipeline, Mandatory = $true)]
        [string[]]
        $InputStrings,
        # Path where the file will be saved
        [Parameter(Mandatory = $true)]
        [string]
        $Path
    )
    process {
        if (Test-Path $Path) {
            throw "A file already exists at $Path. Stopping."
        }
        else {
            [System.IO.File]::WriteAllLines($Path, $InputStrings, [System.Text.UTF8Encoding]($false))
        }
    
    }
}