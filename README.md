# Adminer 4.8.1

If you have installed `PHP` on your local machine, you can start the `PHP server` with `Adminer`

## Install

```sh
git clone git@github.com:amberlex78/adminer.git
cd adminer
```

## Start Adminer

```sh
make start
```

## Stop Adminer

```sh
make stop
```

## Help

```sh
make
```

## Hack for SQLite (applied)

Use the find command to find the login method `login(` it will kinda look like this one.

```php
login($xe,$F){if($F=="")
```

Type anything between `""`. For example: `$F=="SQLite"`

## Theme

Design by `Evgen K` - [Adminer eok8177 dark theme](https://github.com/eok8177/adminer.css)