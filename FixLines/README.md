```
# To compile use:
$ docker run -v /home/$(whoami)/hs/FixLines:/FixLines -w="/FixLines" --rm haskell:8 ghc --make FixLines

# Download http://www.gnu.org/licenses/gpl-3.0.txt
$ curl -O http://www.gnu.org/licenses/gpl-3.0.txt

$ file gpl-3.0.txt
gpl-3.0.txt: ASCII English text
$ unix2dos gpl-3.0.txt
$ file gpl-3.0.txt
gpl-3.0.txt: ASCII English text, with CRLF line terminators
$ touch fixed-gpl-3.0.txt
$ ./FixLines gpl-3.0.txt fixed-gpl-3.0.txt
$ file gpl-3.0.txt
gpl-3.0.txt: ASCII English text
```
