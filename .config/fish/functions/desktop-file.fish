function desktop-file
  echo 'Name of application: ' | read name
  echo 'Path to application binary: ' | read path
  echo '[Optional] Path to application icon : ' | read path

  [Desktop Entry]
  Encoding=UTF-8
  Version=1.0
  Type=Application
  Terminal=false
  Exec=$path
  Name=$name
  Icon=$icon
end
