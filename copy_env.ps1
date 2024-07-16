# Get all 'example.env' files recursively
$files = Get-ChildItem -Recurse -File -Filter 'example.env'

# Define a counter for progress tracking
$totalFiles = $files.Count
$currentFile = 0

# Loop through each file and copy with progress
foreach ($file in $files) {
    $currentFile++
    $dir = $file.DirectoryName
    
    # Display progress
    Write-Progress -Activity "Copying Files" -Status "Copying '$($file.Name)'" -PercentComplete (($currentFile / $totalFiles) * 100)
    
    # Copy file
    Copy-Item -Path $file.FullName -Destination "$dir\development.env"
}

# Complete progress
Write-Progress -Activity "Copying Files" -Status "Complete" -Completed