echo "Building README.md"

echo -ne                               > README.md
for F in lib/Net/SFTP/Foreign/Tempdir/Extract.pm lib/Net/SFTP/Foreign/Tempdir/Extract/File.pm
do
  echo "# File: $F"                   >> README.md
  echo                                >> README.md
  pod2markdown $F | sed -e 's/^#/##/' >> README.md
  echo                                >> README.md
done

echo "Building README"
cat README.md                          > README
