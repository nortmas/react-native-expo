# create-react-app docker image.

Creates a react application by means of `create-react-app` tool and calls yarn start after.
If the application exists it just calls yarn start.

## How to use.
1) Go to your project directory.
2) Create an application folder.
3) Place the file `docker-compose.yml` with the content:
    ```
    version: '3'
    
    services:
      create_react_app:
        image: 'nortmas/create-react-app-and-work'
        container_name: 'create_react_app_and_work'
        command: <react-app>
        ports:
          - 3000:3000
        volumes:
          - ./<react-app>:/project/<react-app>
    ```
4) Replace `<react-app>` with your application folder name.
5) Run `docker-compose up -d`
6) Run `docker logs -f create_react_app_and_work` to see the application url.
