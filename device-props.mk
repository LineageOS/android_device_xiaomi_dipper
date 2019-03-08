# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.soundfx.type=mi

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.sat.fallback.dist=45 \
    persist.camera.sat.fallback.dist.d=5 \
    persist.camera.sat.fallback.luxindex=405 \
    persist.camera.sat.fallback.lux.d=20

# Display density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=440

# Display features
PRODUCT_PROPERTY_OVERRIDES += \
    ro.displayfeature.histogram.enable=true \
    ro.eyecare.brightness.threshold=3 \
    ro.eyecare.brightness.level=8 \
    ro.hist.brightness.threshold=5

# Display postprocessing
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.enable_default_color_mode=0

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.fp.fpc=true \
    ro.hardware.fp.goodix=true

# GNSS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.flp=brcm \
    ro.hardware.gps=brcm

# NFC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.nfc_nci=nqx.default \
    ro.se.type=HCE,UICC
