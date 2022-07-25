## TWRP (SHRP) device tree for LG V20

Add to `.repo/local_manifests/h910.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/lge/h910" name="msm8996_lge_recovery" remote="stendro" revision="h910"/>
</manifest>
```

Then run `repo sync` to check it out.

To build:

```
. build/envsetup.sh
lunch twrp_h910-eng
mka recoveryimage
```

Kernel sources are available at: https://github.com/stendro/msm8996_lge_kernel.git

