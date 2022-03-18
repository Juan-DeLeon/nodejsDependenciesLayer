# Nodejs Dependencies Layer

Layer para lambdas con dependecias comunes

Para instalar dependencias a layer

1) tener la ultima version de package.json

2) cd nodejs/

3) npm install <NUEVA_DEPENDENCIA(S)>

4) cd ..

5)  correr script de publish

```
./publish.sh "descripcion de layer"
```

eg: ./publish.sh "added jwks-rsa"