# Dockerfile

FROM gcc:13.3.0

# Instalar OpenSSH
RUN apt-get update && \
    apt-get install -y sudo openssh-server && \
    mkdir -p /var/run/sshd

# Crear usuario
RUN useradd -m devuser && \
    echo 'devuser:password' | chpasswd && \
    usermod -aG sudo devuser

# Habilitar autenticación por contraseña
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config && \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

# Directorio de trabajo
WORKDIR /workspace

# Exponer puerto SSH
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]