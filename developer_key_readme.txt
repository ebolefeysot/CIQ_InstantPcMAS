The Connect IQ compiler requires a developer key to sign apps when they’re compiled and packaged. The required key must be a RSA 4096 bit private key.

Note: It’s important you keep track of the key you use to sign app packages. You will need to use the same key to sign updates to an existing app on the store. If you lose your original signing key you will not be able to update your app.

Generating a Key Using the Eclipse Plug-in
If you’re using the Eclipse Plug-in there is a key generation utility built-in. Here’s how to use it:

In the top menu, go to Preferences > Connect IQ > Compiler
Click the Generate button to open the wizard
Set the output location for your developer key
Click Finish to create the key

The developer key is unique per application and must not be lost, nor deployed in git.
Store it on google drive for example.