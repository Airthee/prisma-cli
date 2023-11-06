# Prisma CLI

The aim of this project is to make prisma's CLI available without prior installation or build.  
It allows you to use the CLI on a non supported architecture.

## Getting started

### Prerequisites

The only tool you need is Docker installed on your device.

### Running the CLI

To run the CLI, you just need to run the following command :

```bash
docker pull airthee/prisma-cli # or "docker build -t airthee/prisma-cli ."
docker run -it --rm -v $PWD:/app -w /app airthee/prisma-cli init
```

The previous command will download (or build) the Docker image, then it will run the `init` Prisma CLI's command on the current directory.
