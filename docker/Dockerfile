# ベースイメージとしてNVIDIAのCUDAイメージを使用
FROM nvidia/cudagl:11.0-base-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /root/

RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/3bf863cc.pub
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/7fa2af80.pub

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

# Pythonのバージョンを確認
RUN python3 --version

# 任意の追加のセットアップやパッケージのインストールをここに追加できます。
ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

RUN echo "export DISPLAY=:0" >> ~/.bashrc
RUN echo "($pwd)"
RUN apt-get update && apt-get install -y net-tools iproute2 vim