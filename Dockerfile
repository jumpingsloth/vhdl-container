
# ──────────────────────────────────────────────────────
# GHDL + GTKWave “desktop” image                       │
# Works on macOS hosts when run with XQuartz & DISPLAY │
# ──────────────────────────────────────────────────────
FROM debian:bookworm

# 1. Basic tooling and the two EDA packages
RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
    ghdl \
    gtkwave \
    make gcc git nano \
    xauth x11-apps      && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# 2. A non-root user is convenient when you mount code
ARG UNAME=ghdl
RUN useradd -m "${UNAME}"
USER "${UNAME}"
WORKDIR /home/"${UNAME}"

# 3. Default command – drop into a shell so you can
#    compile VHDL, run simulations and open GTKWAVE
ENTRYPOINT ["/bin/bash"]
