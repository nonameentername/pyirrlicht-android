from setuptools import setup

setup(
    name                    = 'irrlicht',
    version                 = '0.9.9', 
    description             = 'ctypes wrapper for irrlicht',
    long_description        = __doc__,
    url                     = 'http://code.google.com/p/pyirrlicht/',
    author                  = 'Max Kolosov',
    author_email            = 'maxkolosov@inbox.ru',
    maintainer              = 'werner mendizabal',
    maintainer_email        = 'nonameentername@gmail.com',
    zip_safe                = False,
    include_package_data    = True,
    packages                = ['irrlicht'],
    package_data            = {
        'irrlicht' : ['bin/*.so'],
    },
    install_requires        = [],
    platforms               = ['any'],
)
