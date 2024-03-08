#######
# YAY #
#######

### Basic batch file for updating DLPDLCR3010EVM-G2 firmware ###

# reach out to luc or chad if you have questions about it or want help using or updating
# lucdjohnson@gmail.com if there's nothing quicker or easier
# license protected and all that...

# Write: set all LED intensities (currents) to 51 (minimum)
W 36 54 33 00 33 00 33 00

# 100 ms delay, seems to be a necessary pause between commands
W 36 DB 64 00

# Write: LED enable green only 02
W 36 52 02

# 100 ms delay, seems to be a necessary pause between commands
W 36 DB 64 00

# Write: Long axis image flip 
W 36 14 02