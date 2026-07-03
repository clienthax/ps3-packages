#!/usr/bin/env python3
import os
import sys
from pathlib import Path

def main():
    ps3dev = os.environ.get("PS3DEV")
    psl1ght = os.environ.get("PSL1GHT")
    if not ps3dev or not psl1ght:
        sys.exit("PS3DEV and PSL1GHT must be set in the environment")

    template_path = Path(__file__).parent / "powerpc64-ps3-elf.cross.in"
    out_path = Path(__file__).parent / "powerpc64-ps3-elf.cross"

    text = template_path.read_text()
    text = text.replace("@PS3DEV@", ps3dev).replace("@PSL1GHT@", psl1ght)
    out_path.write_text(text)
    print(f"wrote {out_path}")

if __name__ == "__main__":
    main()

