FROM eclipse-temurin:21-jdk

# Install necessary Linux GUI libraries
RUN apt-get update && apt-get install -y \
    wget unzip \
    libgtk-3-0 libxext6 libxrender1 libxtst6 libxi6 libxrandr2 libnss3 \
    libasound2t64 libfreetype6 libcups2 libxcomposite1 libxdamage1 libxfixes3 libx11-xcb1

# Download and unpack JavaFX
RUN wget https://download2.gluonhq.com/openjfx/21.0.2/openjfx-21.0.2_linux-x64_bin-sdk.zip && \
    unzip openjfx-21.0.2_linux-x64_bin-sdk.zip -d /opt && \
    rm openjfx-21.0.2_linux-x64_bin-sdk.zip

# Set working directory
WORKDIR /app

# Copy your JAR
COPY JetUML-1.0.0.jar .

# Launch JetUML with JavaFX
CMD ["java", "--module-path", "/opt/javafx-sdk-21.0.2/lib", "--add-modules", "javafx.controls,javafx.fxml", "-jar", "JetUML-1.0.0.jar"]
