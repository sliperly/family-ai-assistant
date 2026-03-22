#!/bin/bash

PROMPT_FILE=~/HomeNetMind/docs/characters/dicius_prompt.txt
QUESTION="Что такое бионика?"
OUTFILE=~/HomeNetMind/tests/benchmark_$(date +%Y%m%d_%H%M%S).txt
SYSTEM_PROMPT=$(cat $PROMPT_FILE)

echo "=== Тест моделей $(date) ===" >> $OUTFILE
echo "Вопрос: $QUESTION" >> $OUTFILE
echo "" >> $OUTFILE

for MODEL in qwen2.5:0.5b qwen2.5:3b qwen2.5:7b; do
    echo "--- $MODEL ---" >> $OUTFILE
    START=$(date +%s%N)

    curl -s http://localhost:11434/api/chat -d "{
        \"model\": \"$MODEL\",
        \"stream\": false,
        \"messages\": [
            {\"role\": \"system\", \"content\": $(echo $SYSTEM_PROMPT | python3 -c 'import json,sys; print(json.dumps(sys.stdin.read()))')},
            {\"role\": \"user\", \"content\": \"$QUESTION\"}
        ]
    }" >> $OUTFILE

    END=$(date +%s%N)
    echo "Время: $(( (END - START) / 1000000 )) мс" >> $OUTFILE
    echo "" >> $OUTFILE
done
