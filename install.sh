#!/bin/bash

# 设置颜色输出
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

# 检查是否为 macOS
if [ "$(uname)" != "Darwin" ]; then
    echo -e "${RED}错误: 该工具仅支持 macOS${NC}"
    exit 1
fi

# 创建目标目录（如果不存在）
if [ ! -d "/usr/local/bin" ]; then
    sudo mkdir -p /usr/local/bin
fi

# 下载脚本
echo "正在下载 CAZ..."
TEMP_FILE=$(mktemp)
curl -fsSL https://raw.githubusercontent.com/wuyax/caz/main/bin/caz -o "$TEMP_FILE"

# 检查下载是否成功
if [ $? -ne 0 ]; then
    echo -e "${RED}下载失败${NC}"
    rm -f "$TEMP_FILE"
    exit 1
fi

# 移动到目标位置
sudo mv "$TEMP_FILE" /usr/local/bin/caz
sudo chmod 755 /usr/local/bin/caz

# 验证安装
if command -v caz >/dev/null 2>&1; then
    echo -e "${GREEN}CAZ 安装成功！${NC}"
    echo "使用 'caz -h' 查看使用说明"
else
    echo -e "${RED}安装失败${NC}"
    exit 1
fi