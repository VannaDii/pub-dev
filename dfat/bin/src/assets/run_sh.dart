const dockerRunSh = r"""#!/bin/bash

if [ "$(command -v dfat)" == "" ]; then
    # The usual way of installing dfat
    dart pub global activate dfat >>/dev/null

    # Helpful for installing dfat from a local source. You probably don't want to use this
    # dart pub global activate --source path "/home/user/Source/pub-dev/dfat" >>/dev/null
fi

dfat build
""";
