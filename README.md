# react-native-expo docker image.

Creates a react native expo application and calls npm start after.
If the application exists it just calls npm start.

## How to use.
1) Go to your project directory.
2) Create an application folder.
3) Place the file `docker-compose.yml` with the content:
    ```
    version: '3'
    
    services:
      react_native_expo:
        image: 'nortmas/react-native-expo'
        command: <react-native-app>
        ports:
          - 3000:3000
        volumes:
          - ./<react-native-app>:/<react-native-app>
    ```
4) Replace `<react-native-app>` with your application folder name.
5) Run `docker-compose up -d`
6) Run `docker logs -f react_native_expo` to see the application url.
