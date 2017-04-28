Compile Elm to D, to build native apps.


## Development info

To run tests:

```sh
nix-shell -A elm-d --run ./run-tests.sh
```

To work on elm-compiler or elm-make:

```sh
nix-shell -A elm-compiler.env
nix-shell -A elm-make.env
```
