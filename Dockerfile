# 1. Используем легкий официальный образ Python 3.11
FROM python:3.11-slim

# 2. Устанавливаем системные зависимости для сборки и работы
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# 3. Задаем рабочую директорию в контейнере
WORKDIR /app

# 4. Сначала копируем только requirements.txt (для кэширования слоев Docker)
COPY requirements.txt .

# 5. Устанавливаем все библиотеки Python
RUN pip install --no-cache-dir -r requirements.txt

# 6. Копируем исходный код и данные проекта
COPY . .

# 7. Открываем стандартный порт Jupyter Lab
EXPOSE 8888

# 8. Команда для запуска Jupyter Lab без браузера и с доступом снаружи
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]