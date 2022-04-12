echo ==> Installing pre-requisites:
pkgman install mercurial pip_python rust_bin gtk3_devel
wait
echo ==> Downloading Mozilla applications source code
curl https://hg.mozilla.org/mozilla-central/raw-file/default/python/mozboot/bin/bootstrap.py -O
wait
echo ==> Bootstraping
python3 bootstrap.py
wait
echo ==> remove boostrap script
rm bootstrap.py
wait
echo ==> build mach (Mozilla generic command dispatcher, used to build applications)
