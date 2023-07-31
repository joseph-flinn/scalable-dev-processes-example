FROM python:3.11.3-slim as base

# Setup env
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONFAULTHANDLER 1

# Install pipenv and compilation dependencies
RUN pip install pytest 
RUN pip install requests

RUN useradd --create-home me
WORKDIR /home/me
USER me

# Install application into container
COPY ./e2e ./tests/e2e

# Run the application
CMD ["pytest", "tests/e2e"]
