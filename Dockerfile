# GPUの場合
#FROM tensorflow/tensorflow:1.12.0-gpu-py3
# CPUの場合 
FROM tensorflow/tensorflow:1.12.0-py3
COPY into_container/requirements.txt /root/

# パッケージインストール
RUN add-apt-repository -y ppa:jonathonf/vim \
 && apt-get update \
 && apt-get install -y git vim xterm sudo python3-tk \
 && pip3 install --upgrade pip \
 && pip3 install -r /root/requirements.txt

# ユーザーの切り替え
RUN groupadd -g 1000 developer && \
    useradd  -u 1000 -g 1000 --groups sudo --create-home --shell /bin/bash developer && \
    echo 'developer:P@ssw0rd' | chpasswd
USER developer
WORKDIR /home/developer
