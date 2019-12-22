# Patch the init.rc (path in android-10.x & up =  /system/init.rc)
cp -f /tmp/init.debug.addition.rc ./system/init.debug.addition.rc;
chmod 750 ./system/init.debug.addition.rc;
if ! grep -q 'import init.debug.addition.rc' ./system/init.rc; then
  echo 'import init.debug.addition.rc' >> ./system/init.rc;
fi;

# Result
return 0;

