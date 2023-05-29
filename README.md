# verovio-hooks

## Setup steps
1. Install [Docker](https://www.docker.com/)
1. Go to verovio.
2. Clone this repo
    ```
    git clone https://github.com/softcat477/verovio-hooks.git
    ```
3. Move `verovio-hooks/check.sh` and `cp verovio-hooks/Makefile` to `./`. Move `verovio-hooks/hooks/pre-commit` to `.git/hooks`
    ```
    cp verovio-hooks/check.sh . && cp verovio-hooks/Makefile . && cp verovio-hooks/hooks/pre-commit .git/hooks/
    ```
4. Make `pre-commit` be an executable.
    ```
    chmod +x .git/hooks/pre-commit
    ```
7. Add `check.sh` to `.git/info/exclude`
    ```
    echo check.sh >> .git/info/exclude
    ```
8. Add `verovio-hooks/` to `.git/info/exclude`
    ```
    echo verovio-hooks/ >> .git/info/exclude
    ```
9. Your directory tree should look like this:
    ```
    .
    ├── CHANGELOG.md
    ├── COPYING
    ├── COPYING.LESSER
    ├── MANIFEST.in
    ├── README.md
    ├── Verovio.podspec
    ├── Verovio.xcodeproj/
    ├── appveyor.yml
    ├── bindings/
    ├── cmake/
    ├── codemeta.json
    ├── data/
    ├── doc/
    ├── emscripten/
    ├── fonts/
    ├── include/
    ├── libmei/
    ├── setup.py
    ├── src/
    ├── tools/
    ├── Makefile
    ├── check.sh
    └── verovio-hooks
        ├── Makefile
        ├── README.md
        ├── check.sh
        └── hooks
            └── pre-commit
    ```

## Usage
### Reformat your `src` manually
```
make t_src
```

### Reformat your `include` manually
```
make t_include
```

### Reformat your `libmei/addons` manually
```
make t_addons
```

### Reformat your `tools` manually
```
make t_tools
```

### Automate formatter with git
Just use your normal git workflow. Clang will reformat your code before you write your commit messages.



