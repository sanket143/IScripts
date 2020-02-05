WARNING: ``install.sh`` will write files in ``$HOME/.aws`` folder programmatically.
Take backup of your credentials if you have configured already.

## DynamoDB Installation

```sh
$ git clone https://github.com/sanket143/iscripts
$ cd iscripts/dynamodb
$ ./install.sh
```

## Initialize DynamoDB Server
```sh
$ dynamodb
```

Test if its successfully installed using ``$ python dynamo_test.py``
