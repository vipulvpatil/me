# My portfolio

## Details

This is a Hugo based static website that I intend to release eventually. For now, this README will document my steps in building my first real Hugo website.

* To get home page setup, i had to create a the following minimum files.

```
./content/_index.md
./layouts/_default/baseof.html
./layouts/index.html
```

For exact content of all the above files check [this](https://github.com/vipulvpatil/me/commit/homepage) commit.

* To get PostCSS working do the following.

```
sudo snap install node --classic # install node if not installed
npm install postcss-cli autoprefixer
```

For code changes check [this](https://github.com/vipulvpatil/me/commit/postcss)

