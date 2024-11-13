# sh -c "$(curl -fsSL https://raw.githubusercontent.com/JaxVN/jaxvn.github.io/refs/heads/main/script/1.sh)" 
#
#!/bin/bash
# Kiểm tra và cài đặt pv nếu chưa có
if ! command -v pv &> /dev/null; then
    echo "pv chưa được cài đặt. Đang cài đặt pv..."
    sudo apt-get update -y > /dev/null 2>&1
    sudo apt-get install -y pv > /dev/null 2>&1
    echo "Đã cài đặt pv thành công."
fi

# Sử dụng pv để tải script và thực thi
echo "Đang tải và cài đặt Docker, vui lòng chờ..."

curl -fsSL https://raw.githubusercontent.com/JaxVN/jaxvn.github.io/refs/heads/main/script/docker.sh | pv -pte -s 100k | sudo sh > /dev/null 2>&1

echo "Cài đặt Docker hoàn tất!"

## Option Màu mè
# Kiểm tra và cài đặt zsh nếu chưa có
# if ! command -v zsh &> /dev/null; then
#    echo "zsh chưa được cài đặt. Đang cài đặt zsh..."
#    sudo apt-get update -y > /dev/null 2>&1
#    sudo apt-get install -y zsh > /dev/null 2>&1
#    echo "Đã cài đặt zsh thành công."
# fi
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# https://ohmyz.sh/
