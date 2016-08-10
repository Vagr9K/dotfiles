#!/usr/bin/env python
from urllib import request
import subprocess
import re
import os
import sys


def GetLatestVersion(productname):
    if productname == 'WebStorm':
        code = 'WS'
    elif productname == 'pycharm-professional':
        code = 'PCP'
    elif productname == 'CLion':
        code = 'CL'
    elif productname == 'datagrip':
        code = 'DG'
    else:
        raise(ValueError("Invalid productname argument."))

    baseurl = 'https://data.services.jetbrains.com/products/download?code={0}&platform=linux'.format(
        code)
    rq = request.urlopen(baseurl)
    realurl = rq.url

    rq.close()
    strip1 = re.compile(u'-(.+).tar.gz$')
    version = strip1.findall(realurl)[0]
    strip2 = re.compile(u'-(.+)$')

    found = False
    while not found:
        findlist = strip2.findall(version)
        if not len(findlist):
            found = True
        else:
            version = findlist[0]

    return version


def UpdateVersion(newver, filepath):
    strnewver = "\npkgver={}\n".format(newver)
    fp = open(filepath, "r+")
    data = fp.read()
    regex = re.compile(u"\npkgver=(.+)\n")
    oldver = regex.findall(data)[0]
    if oldver != newver:
        newdata = regex.sub(strnewver, data)
        fp.seek(0)
        fp.write(newdata)
        fp.truncate()
        fp.close()
        return True
    return False


def UpdatePkgbuild(productname, pkgpath):
    print("===> Updating {0} at {1}.".format(productname, pkgpath))
    newver = GetLatestVersion(productname)
    pkgbuild = os.path.join(pkgpath, "PKGBUILD")
    if UpdateVersion(newver, pkgbuild):
        status = subprocess.run(
            args=["updpkgsums {0}".format(str(pkgbuild))], shell=True)
        if status.returncode == 1:
            print("Error while updating pkgsums for {0}".format(pkgbuild))
            return False
        else:
            return True
    else:
        print("{0} at {1} is already up to date.".format(productname, pkgpath))
        return False


def UpdatePackage(productname, pkgpath, forceinstall=False):
    if UpdatePkgbuild(productname, pkgpath) or forceinstall is True:
        os.chdir(pkgpath)
        if subprocess.run("makepkg -sic", shell=True):
            print("===> Finished updating {0} at {1}.".format(
                productname, pkgpath))
        else:
            print("===> Failed installing {0} at {1}.".format(
                productname, pkgpath))


def main():
    forceinstall = False
    if len(sys.argv) == 2:
        if sys.argv[1] == "-f":
            forceinstall = True
    currdir = os.path.dirname(os.path.realpath(__file__))
    UpdatePackage("WebStorm", os.path.join(currdir, "webstorm"), forceinstall)
    UpdatePackage("pycharm-professional",
                  os.path.join(currdir, "pycharm-professional"), forceinstall)
    UpdatePackage("CLion", os.path.join(currdir, "clion"), forceinstall)
    # UpdatePackage("datagrip", os.path.join(currdir, "datagrip"), forceinstall)

if __name__ == "__main__":
    main()
