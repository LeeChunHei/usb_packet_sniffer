usb_connect
if { [as_device_id] } {
  as_write  ./usb_capture_master.bin
  as_verify ./usb_capture_master.bin
}
usb_close
