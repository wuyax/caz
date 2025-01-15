# CAZ (Clean And Zip)

CAZ 是一个简单但功能强大的命令行工具，用于清理目录中的 .DS_Store 文件并创建 zip 压缩包。

## 功能特点

- 自动删除目录及子目录中的所有 .DS_Store 文件
- 创建 zip 压缩包，支持灵活的压缩选项
- 支持保留或排除根目录
- 简洁的命令行界面

## 安装

### 使用 Homebrew（推荐）

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
# 仅压缩目录内容（不包含根目录）
caz /path/to/dir

# 压缩包含根目录
caz -r /path/to/dir

# 压缩当前目录内容
caz

# 压缩当前目录（包含根目录）
caz -r

# 使用自定义压缩包名称
caz /path/to/dir custom.zip

# 使用自定义压缩包名称，并包含根目录
caz -r /path/to/dir custom.zip
```

## 选项

```bash
-h, --help    显示帮助信息
-v, --version 显示版本信息
-r, --root    在压缩包中保留根目录
```

### 压缩包结构示例

对于如下目录结构：
```
myproject/
├── src/
│   └── index.js
├── docs/
│   └── README.md
└── package.json
```

不使用 `-r` 选项（默认）时：
```
myproject.zip
├── src/
│   └── index.js
├── docs/
│   └── README.md
└── package.json
```

使用 `-r` 选项时：
```
myproject.zip
└── myproject/
    ├── src/
    │   └── index.js
    ├── docs/
    │   └── README.md
    └── package.json
```

## 许可证

MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情