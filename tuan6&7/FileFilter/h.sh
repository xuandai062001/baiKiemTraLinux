cmp -b bai1.doc bai2.doc
(
sort -o file1 bai1.doc &
sort -o file2 bai2.doc &
wait
comm file1 file2
)
#comm bai1.doc bai2.doc
