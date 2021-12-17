# AWS Elastic Beanstalk CLI

Imagem com o utilitário de linha de comando do AWS Elastic Beanstalk para uso no pipeline do Gitlab.

- https://hub.docker.com/r/smarppydocker/awseb-cli
- https://github.com/smarppy/docker-awseb-cli
- https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html

## Atualização

Caso necessário a atualização de algo na imagem, basta modificar o arquivo `Dockerfile` na raiz do projeto.

Após a modificação siga os passos abaixo:

Faz build da imagem Docker com a tag na versão do AWS EB CLI escolhida:

```shell
$ docker build -t smarppydocker/awseb-cli:<cli-version> .
```

Faz upload da imagem local para o Docker Hub:

```shell
$ docker push smarppydocker/awseb-cli:<cli-version>
```

Cria tag e faz upload da imagem para tag `latest` no Docker Hub:

```shell
$ docker tag smarppydocker/awseb-cli:<cli-version> smarppydocker/awseb-cli:latest
$ docker push smarppydocker/awseb-cli:latest
```
