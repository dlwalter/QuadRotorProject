# Load project
xload xmp system.xmp
# Load MHS file
run resync
# Perform design rule check
run drc
save proj
exit
