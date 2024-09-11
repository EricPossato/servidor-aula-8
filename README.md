# servidor-aula-8

## Running the server
1. Clone repository
2. Have docker installed
3. Build the docker image by running
```bash
docker build -t test_server .
```
4. Run the docker image
    - On Linux:
    ```bash
    docker run -p 8080:8080 -v $(pwd)/src:/app/src test_server
    ```

    - On Windows:
    ```bash
    docker run -p 8080:8080 -v ${PWD}/src:/app/src test_server
    ```