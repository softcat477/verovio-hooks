# verovio-hooks

## Setup steps
1. Install [Docker](https://www.docker.com/)
1. Go to verovio.
2. Cone this repo
    ```
    git clone https://github.com/softcat477/verovio-hooks.git
    ```
3. Move `./verovio-hooks/.clang-format` to `.`
    ```
    cp verovio-hooks/.clang-format .
    ```
4. Move `./verovio-hooks/check.sh` to `.`
    ```
    cp verovio-hooks/check.sh .
    ```
5. Move `./verovio-hooks/check.sh/Makefile` to `.`
    ```
    cp verovio-hooks/Makefile .
    ```
6. Move `verovio-hooks/hooks/pre-commit` to `.git/hooks/`
    ```
    cp verovio-hooks/hooks/pre-commit .git/hooks/
    ```
7. Add `check.sh` to `.gitignore`
    ```
    echo check.sh >> .gitignore
    ```
8. Add `Makefile` to `.gitignore`
    ```
    echo Makefile >> .gitignore
    ```
8. Add `verovio-hooks/` to `.gitignore`
    ```
    echo verovio-hooks/ >> .gitignore
    ```
7. Youre directory tree should look like this:

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



