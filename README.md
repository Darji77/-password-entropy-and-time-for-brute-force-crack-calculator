# CipherCalc

A simple script that uses password entropy and length, instead of typing your own passwords, to estimate the time necessary for an attacker to brute-force crack your passwords

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Requisites
You'll need bc, xargs, printf and git to know if you already have them installed use
```bash
bc --version
```

```bash
printf
```

```bash
xargs --version
```

```bash
git --version
```

If you do not have them installed:

### Debian-based users like Ubuntu:
First update your packages
```bash
sudo apt-get update
```

Install Git
```bash
sudo apt-get install git
```

Install printf
```bash
sudo apt-get install coreutils
```

Install xargs
```bash
sudo apt-get install findutils
```

Install bc
```bash
sudo apt-get install bc
```



### For RHEL-based users like CentOS
First update your packages:
```bash
sudo yum update
```

Install Git
```
sudo yum install git
```

Install printf
```bash
yum install coreutils
```

Install xargs
```bash
sudo yum install findutils
```

Install bc
```bash
sudo yum install bc
```



## Installation

```bash
git clone https://github.com/Darji77/CipherCalc.git
```

## Usage
Before using the script we must give them executable permissions, in your local directory:
```bash
chmod +x ciphercalc.sh
```

Now you can run it as a program:

```bash
./ciphercalc.sh
```



## Contributing

Thank you for your interest in my project! While this project is primarily intended for personal use, I'm happy to share it with others who may find it useful. At this time, I'm not actively seeking contributions or pull requests. However, you're welcome to use the project, report any issues you encounter, or suggest improvements.



## License

This project is licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).The full text of the license can be found [here](./license.txt).
