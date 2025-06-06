# Dockerfile
FROM debian:latest

# Argumento para la versión de GCC
ARG GCC_VERSION=13.3.0

# Actualizar el sistema e instalar las dependencias necesarias
RUN apt-get update && \
    apt-get install -y wget build-essential && \
    apt-get clean

# Descargar e instalar GCC
RUN wget https://ftp.gnu.org/gnu/gcc/gcc-${GCC_VERSION}/gcc-${GCC_VERSION}.tar.gz && \
    tar -xzf gcc-${GCC_VERSION}.tar.gz && \
    cd gcc-${GCC_VERSION} && \
    ./configure --enable-languages=c,c++ && \
    make && \
    make install && \
    cd .. && \
    rm -rf gcc-${GCC_VERSION} gcc-${GCC_VERSION}.tar.gz

# Comando por defecto
CMD ["bash"]
