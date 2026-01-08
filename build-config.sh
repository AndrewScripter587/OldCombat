#!/bin/sh

if [ "$#" -le 1 ]; then
    echo "Usage: sh build-config.sh build-mode version-scope" >&2
    exit 1
fi
# echo "<%%\n  $1_21_4compile = false\n  lite_compile = true\n  beta_compile = false\n   ultralite = false\n%%>" > ./src/build.mcb
echo "<%%" > ./src/build.mcb

if [ "$2" = "legacy" ]; then
  echo "  \$1_21_4compile = true" >> ./src/build.mcb
else
  echo "  \$1_21_4compile = false" >> ./src/build.mcb
fi

if [ "$1" = "full" ]; then
  echo "  lite_compile = false" >> ./src/build.mcb
  echo "  ultralite = false" >> ./src/build.mcb
elif [ "$1" = "lite" ]; then
  echo "  lite_compile = true" >> ./src/build.mcb
  echo "  ultralite = false" >> ./src/build.mcb
elif [ "$1" = "ultralite" ]; then
  echo "  lite_compile = false" >> ./src/build.mcb
  echo "  ultralite = true" >> ./src/build.mcb
fi
echo "  beta_compile = false" >> ./src/build.mcb
echo "%%>" >> ./src/build.mcb
