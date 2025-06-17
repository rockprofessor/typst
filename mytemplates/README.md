# Typst Templates created for school projects

## Local packages

Want to install a package locally on your system without publishing it or experiment with it before publishing?
You can store packages in {data-dir}/typst/packages/{namespace}/{name}/{version} to make them available locally on your system.
Here, {data-dir} is

    ~/Library/Application Support on macOS

Packages in the data directory have precedence over ones in the cache directory.
While you can create arbitrary namespaces with folders, a good namespace for system-local packages is local:

    Store a package in ~/.local/share/typst/packages/local/mypkg/1.0.0
    Import from it with #import "@local/mypkg:1.0.0": *

Note that future iterations of Typst's package management may change/break this local setup.
