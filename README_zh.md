# CAZ (清理并压缩)

CAZ 是一个简单但功能强大的命令行工具，用于清理目录中的 .DS_Store 文件并创建 zip 压缩包。

## 功能特点

- 自动删除目录及子目录中的所有 .DS_Store 文件
- 创建目录的 zip 压缩包
- 支持自定义压缩包名称
- 简洁的命令行界面

## 安装方法

### 使用 Homebrew 安装（推荐）

```bash
brew tap wuyax/caz
brew install caz
```

### 手动安装

```bash
curl -fsSL https://raw.githubusercontent.com/wuyax/caz/refs/heads/master/install.sh | bash
```

## 使用方法

```bash
# 使用目录名称作为压缩包名称压缩当前目录
caz

# 使用指定的压缩包名称压缩当前目录
caz ./ myarchive.zip

# 压缩指定目录
caz /path/to/dir

# 使用自定义名称压缩指定目录
caz /path/to/dir custom.zip
```

## 选项

```bash
-h, --help    显示帮助信息
-v, --version 显示版本信息
```

## 许可证

MIT 许可证 - 详情请查看 [LICENSE](LICENSE) 文件