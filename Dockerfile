FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir \
    langgraph \
    langchain \
    langchain-anthropic \
    langchain-community \
    langchain-chroma \
    chromadb \
    sentence-transformers \
    gradio \
    pandas \
    numpy

EXPOSE 7860

CMD ["python", "dawson_data_agent.py"]
