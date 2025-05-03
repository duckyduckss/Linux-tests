#!/usr/bin/env bash
# setup_make_env.sh – creează make_env cu fișiere C
set -euo pipefail

mkdir -p make_env
cat > make_env/utils.h << 'EOF'
#ifndef UTILS_H
#define UTILS_H
int multiply(int a, int b);
#endif
EOF

cat > make_env/utils.c << 'EOF'
#include "utils.h"
int multiply(int a, int b) { return a * b; }
EOF

cat > make_env/main.c << 'EOF'
#include <stdio.h>
#include "utils.h"
int main() {
    int a = 6, b = 7;
    printf("Product: %d\n", multiply(a, b));
    return 0;
}
EOF
