from collections import defaultdict
import os
import glob


def load_whole_text(path: str) -> str:
    whole_text = ''

    for file in glob.glob(path):
        with open(file) as f:
            whole_text += f.read()

    return whole_text


def load_files(path: str) -> dict[str, str]:
    files = {}

    for file in glob.glob(path):
        with open(file) as f:
            files[file] = f.read()

    return files
