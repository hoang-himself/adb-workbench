function Get-Asset {
  Remove-Item -Path '.\platform-tools\' -Recurse -Force

  # https://developer.android.com/tools/releases/platform-tools
  Invoke-WebRequest -Uri 'https://dl.google.com/android/repository/platform-tools-latest-windows.zip' `
    -OutFile 'platform-tools-latest-windows.zip';

  Expand-Archive -Path '.\platform-tools-latest-windows.zip' -DestinationPath '.' -Force;
  Remove-Item -Path 'platform-tools-latest-windows.zip' -Force;
}

Get-Asset
