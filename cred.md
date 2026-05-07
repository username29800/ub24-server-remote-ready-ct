# Image user credential info
- accounts: root(default), user(recommended)
- password: None,          vnccntghy110

## appendix: tutorial
- run 'sh build.sh' to build images
   - uncomment gui(x11 ready) line to add the functionality

- usage: sh build.sh \[name\] \[base image version\]

```bash
sh build.sh ub-rsr 24.04
```

## appendix: image types
### 1. base
   - the base system: networking(iproute2), editor(vim/nano)
   - login to non-root user by default
   - occasion ux installed onto userspace
   - other types of images are based on this image

### 2. ssh
   - ssh-enabled container image: openssh
   - dev and gui images require this setup
      - modify CMD line to get around this limitation

### 3. dev
   - C/C++ build tools: gcc, g++
   - Project build tools: make, cmake, automake, autoconf, aclocal, m4
   - utilities: pkgconf, gettext

### 4. gui
   - x11 apps: xfe, thunar, mousepad
   - x11 terminal: urxvt, xfce terminal
   - x11 utility: ibus, dbus-x11
   - CJK-compatible monospace font: D2Coding
