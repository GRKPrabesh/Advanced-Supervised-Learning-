# Use official Jupyter base notebook with Python 3.10
FROM jupyter/base-notebook:python-3.10

# Set working directory inside the container
WORKDIR /home/jovyan/work

# Copy Week6 folder into the container
COPY Week6/ ./Week6/

# Copy requirements.txt
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Start Jupyter Notebook when the container runs
CMD ["start-notebook.sh"]
