# CAZ (Clean And Zip)

CAZ 是一个简单而强大的命令行工具，用于清理目录中的 .DS_Store 文件并创建 zip 压缩包。

## 功能

- 自动删除目录及其子目录中的所有 .DS_Store 文件
- 创建目录的 zip 压缩包
- 支持自定义压缩包名称
- 简洁的命令行界面

## 安装

### 使用 Homebrew 安装（推荐）

```bash
brew tap wuyax/caz
brew install caz
```

### 手动安装

```bash
curl -fsSL https://raw.githubusercontent.com/wuyax/caz/main/install.sh | bash
```

## 使用方法

```bash
# 压缩当前目录，使用目录名作为压缩包名
caz

# 压缩当前目录，指定压缩包名称
caz ./ myarchive.zip

# 压缩指定目录
caz /path/to/dir

# 压缩指定目录，并指定压缩包名称
caz /path/to/dir custom.zip
```

## 选项

```bash
-h, --help    显示帮助信息
```

## 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件