## App Sistem Antrian Loket

Satria Dimas Permana
312010450
TI.20.B2

## Link


## Getting Started

```shell
git clone https://github.com/satriadimas/UasSmester4.git
cd UasSmester4
```

open terminal
```shell
composer install
php spark migrate
php spark serve
```

then,

```shell
Open http://localhost:8080
```

if an error 
```shell
Constant FILTER_SANITIZE_STRING is deprecated
```

You are using PHP 8.1, and you need at least codeigniter 4.1.7

Solutions:

- Option1: Downgrade PHP 7.4
- Option2: Upgrade Codeigniter

Reference: https://codeigniter.com/user_guide/changelogs/v4.1.7.html
