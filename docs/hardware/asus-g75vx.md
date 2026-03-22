# ASUS G75VX — hnm-ceo-g75

## Характеристики
- CPU: Intel Core i7-3630QM @ 2.40GHz (4 ядра, 8 потоков)
- RAM: 32 ГБ
- GPU: NVIDIA GeForce GTX 670MX (3 ГБ VRAM, Kepler CC 3.0)
- SSD: ~936 ГБ (система + Docker)
- HDD1: 1.7 ТБ /mnt/workspace (Docker, модели)
- HDD2: 3.6 ТБ /mnt/library (библиотека)
- OS: Debian 12, IP: 192.168.20.57
- Hostname: hnm-ceo-g75

## Сервисы
- Ollama (llama3.2:3b, tinyllama, qwen2.5:7b, mistral:7b)
- Open WebUI — http://192.168.20.57:3000
- Docker root: /mnt/workspace/docker

## Примечания
- GPU не поддерживается Ollama (CC 3.0 < минимального 5.0)
- GPU доступен для: faster-whisper, sentence-transformers, OpenCV, NVDEC
