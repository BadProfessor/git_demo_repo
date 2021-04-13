getent passwd {0..65535} | md5sum | cut -d: -f1,6 > ~/environment/testFolder/testOutput.md5   # outputs the above in md5
# if md5sum --status -c ~/environment/testFolder/testOutput.md5; then
#     echo OK
# else
#     echo FALSE
# fi