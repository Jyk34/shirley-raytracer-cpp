@echo off
echo Starting RayTracer for creating PPM and PNG...

.\Release\RayTracer.exe
echo Started solution

echo Ready!
echo Opening image...
image_example.png

ping localhost -n 2 >nul
exit