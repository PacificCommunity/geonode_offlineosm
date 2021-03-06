import os
from setuptools import find_packages, setup

with open(os.path.join(os.path.dirname(__file__), 'README.md')) as readme:
    README = readme.read()

# allow setup.py to be run from any path
os.chdir(os.path.normpath(os.path.join(os.path.abspath(__file__), os.pardir)))

setup(
    name='geonode-offlineosm',
    version='0.0.6',
    packages=find_packages(),
    include_package_data=True,
    license='TODO',  # example license
    description='A Django app for Geonode to extract OSM data.',
    long_description=README,
    url='TODO',
    author='Olivier Dalang',
    author_email='olivierd@spc.int',
    classifiers=[
        'Environment :: Web Environment',
        'Framework :: Django',
        'Framework :: Django :: Geonode',  # replace "X.Y" as appropriate
        # 'Intended Audience :: Developers',
        # 'License :: OSI Approved :: BSD License',  # example license
        # 'Operating System :: OS Independent',
        # 'Programming Language :: Python',
        # 'Programming Language :: Python :: 3.5',
        # 'Programming Language :: Python :: 3.6',
        # 'Topic :: Internet :: WWW/HTTP',
        # 'Topic :: Internet :: WWW/HTTP :: Dynamic Content',
    ],
)