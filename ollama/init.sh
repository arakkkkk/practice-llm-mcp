#!/bin/bash

echo "🔧 Starting model initialization: qwen"

# Wait until the Ollama server is fully up and running
until bash -c '</dev/tcp/localhost/11434' 2>/dev/null; do
  echo "⏳ Waiting for Ollama to start..."
  sleep 5
done

# Pull the model
ollama pull phi3:mini # 非常に軽量（2.7B）でも賢い（驚異的）
ollama pull llama3:8b # 精度も速度もバランス良し（Meta製） GPT-3.5レベル
ollama pull qwen:7b-chat # 14b より軽く、対話調整されていて使いやすい
ollama pull mistral # 超高速、Q&A・雑談に強い
ollama deepseek-coder:6.7b # コード生成に特化したモデル

echo "✅ Model is ready"
