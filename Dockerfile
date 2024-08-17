# Menggunakan base image Python
FROM python:3.12.3

# Set working directory
WORKDIR /app

# Copy requirements.txt
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Jika Anda tidak memiliki file requirements.txt, tambahkan library secara langsung
RUN pip install --no-cache-dir statsmodels

# Copy seluruh kode ke container
COPY . .

# Expose port yang diperlukan, jika Anda menjalankan aplikasi web
EXPOSE 5000

# Jalankan aplikasi
CMD ["python", "app.py"]
