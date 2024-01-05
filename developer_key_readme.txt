The Connect IQ compiler requires a developer key to sign apps when they’re compiled and packaged. The required key must be a RSA 4096 bit private key.

Note: It’s important you keep track of the key you use to sign app packages. You will need to use the same key to sign updates to an existing app on the store. If you lose your original signing key you will not be able to update your app.

Setting the key in vscode:
Go to extension/monkey c/settings and set Developer Key Path
Compilator will set the key with -y flag

The developer key is unique per application and must not be lost, nor deployed in git.
Store it on google drive for example.