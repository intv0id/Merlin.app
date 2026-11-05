#!/bin/bash
dotnet build /app/MerlinFrontend.csproj
if [ $? -eq 0 ]; then
  echo "Build successful."
else
  echo "Build failed."
fi
