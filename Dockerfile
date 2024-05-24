FROM node:20

# Install necessary dependencies for puppeteer
RUN apt-get update && apt-get install -y \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libxkbcommon0 \
    libgbm1 \
    libasound2 \
    libxcomposite1 \
    libxrandr2 \
    libgtk-3-0 \
    libpangocairo-1.0-0 \
    libpango-1.0-0 \
    libatk-bridge2.0-0 \
    libatspi2.0-0 \
    libgdk-pixbuf2.0-0 \
    libgtk-3-0 \
    libxdamage1 \
    libxfixes3 \
    libxcb1 \
    libxshmfence1 \
    && rm -rf /var/lib/apt/lists/* \

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
