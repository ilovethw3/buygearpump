Add-Type -AssemblyName System.Drawing

$srcPath = "C:\Users\tianhongwei\.gemini\antigravity\brain\24496c36-2ece-47bf-acc9-d00572e83df3\post_1_cover_v2_1778219483105.png"
$destDir = "D:\code\buygearpump\assets\images\blog"
$destPath = "$destDir\post-1.jpg"

if (-not (Test-Path $destDir)) {
    New-Item -ItemType Directory -Force -Path $destDir | Out-Null
}

$srcImage = [System.Drawing.Image]::FromFile($srcPath)

$targetWidth = 770
$targetHeight = 400

$srcWidth = $srcImage.Width
$srcHeight = $srcImage.Height

$ratioX = $targetWidth / $srcWidth
$ratioY = $targetHeight / $srcHeight
$ratio = [math]::Max($ratioX, $ratioY)

$newWidth = [int]($srcWidth * $ratio)
$newHeight = [int]($srcHeight * $ratio)

$destImage = New-Object System.Drawing.Bitmap($targetWidth, $targetHeight)
$graphics = [System.Drawing.Graphics]::FromImage($destImage)
$graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$graphics.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
$graphics.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
$graphics.CompositingQuality = [System.Drawing.Drawing2D.CompositingQuality]::HighQuality

$posX = [int](($targetWidth - $newWidth) / 2)
$posY = [int](($targetHeight - $newHeight) / 2)

$graphics.DrawImage($srcImage, $posX, $posY, $newWidth, $newHeight)

$destImage.Save($destPath, [System.Drawing.Imaging.ImageFormat]::Jpeg)

$graphics.Dispose()
$destImage.Dispose()
$srcImage.Dispose()
