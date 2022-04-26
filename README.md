# fortran-unicode

## About

This project fetch the latest `NamesList.txt` and generate fortran code constants to each named constant using
[fypp](https://github.com/aradi/fypp).


### Small Example

```fortran
program main
use fortran_unicode
end program
```

## Getting Started
### Using as a dependency in FPM

Add a entry in the "dependencies" section of your project's fpm.toml

```toml
# fpm.toml
[ dependencies ]
mfi = { git="https://github.com/14NGiestas/fortran-unicode.git", branch="fortran-unicode-fpm"}
```

### Building from source

First get the code, by cloning the repo:

```sh
git clone https://github.com/14NGiestas/fortran-unicode.git
cd mfi/
```

Install the [fypp](https://github.com/aradi/fypp) using the command:

```sh
sudo pip install fypp
```

This project supports the [Fortran Package Manager](https://github.com/fortran-lang/fpm). 
Follow the directions on that page to install FPM if you haven't already.

```sh
make
fpm test
```
