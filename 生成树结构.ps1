# 定义源文件夹、输出文件和排除的文件扩展名
$sourceFolder = "C:\path\to\your\folder"
$outputFile = "C:\path\to\your\output.txt"
$excludedExtensions = @(".mp3", ".mp4") # 例如排除MP3和MP4文件

# 创建一个用于保存树结构的空字符串
$tree = ""

# 定义一个递归函数来生成树结构
function Get-TreeStructure($path, $indent) {
    Get-ChildItem -Path $path | ForEach-Object {
        if ($_.PSIsContainer) {
            # 添加文件夹到树
            $global:tree += "$indent$($_.Name)`r`n"
            # 递归调用以处理子文件夹
            Get-TreeStructure -path $_.FullName -indent ("    " + $indent)
        } else {
            # 检查文件是否是被排除的类型
            if ($excludedExtensions -notcontains $_.Extension) {
                # 添加文件到树
                $global:tree += "$indent$($_.Name)`r`n"
            }
        }
    }
}

# 生成树结构
Get-TreeStructure -path $sourceFolder -indent ""

# 将树结构写入输出文件
$tree | Out-File -FilePath $outputFile

# 显示操作完成的信息
Write-Host "树结构已生成并保存到 $outputFile"