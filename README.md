WQJS: Websocketd + QuickJS as single-binary startingpoint

> NOTE: this is an experimental approach

<img src="https://raw.githubusercontent.com/coderofsalvation/WQJS/master/src/WQJS.gif" width="100%"/>

## Usage

* [https://websocketd.com](https://websocketd.com) serves `src/html/index.html` and starts `src/app.js`
* all can be bundled into one EXE or linux binary

```
C:\Desktop> iexpress /N .packager\package.SED

$ .packager/build.linux-x86_64 
$ ls -la dist

total 5.4M
drwxr-xr-x 1 leon leon 4.0K Feb  2 20:10 .
drwxr-xr-x 1 leon leon 4.0K Feb  2 20:32 ..
-rwxr-xr-x 1 leon leon 2.9M Feb  2 20:10 app
-rwxr--r-- 1 leon leon 2.5M Feb  2 20:09 app.exe
```


# build binaries

* windows console: `iexpress /N .packager\package.SED` -> `app.exe`
* linux console: `.packager/build.linux-x86_64` -> `app`

> NOTE: the windows binary has access to the files specified in `package.SED` but does not maintain folder structure

# Todo

The windows build doesn't respect the directory-structure and isn't really convenient (new files require editing `.packager/package.SED` 
