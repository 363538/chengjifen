#!/bin/bash
# Railway 自动部署脚本

echo "开始部署积分商城 API v3..."

# 设置环境变量
export RAILWAY_TOKEN="${{ secrets.RAILWAY_TOKEN }}"

# 进入 API 目录
cd deploy/api-proxy

# 打印状态
echo "当前目录: $(pwd)"
ls -la

# 打包（如果还没有 ZIP）
if [ ! -f "../chengjifen-api-v3.zip" ]; then
    echo "创建 ZIP 包..."
    zip -r "../chengjifen-api-v3.zip" . -x "node_modules/*"
fi

echo "部署完成！请访问 https://railway.com 查看状态"
