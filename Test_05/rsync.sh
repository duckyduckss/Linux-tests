#!/usr/bin/env bash
# setup_rsync_env.sh
# Scop: Creează structura de directoare și fișiere necesară pentru testele cu rsync.

set -euo pipefail

# Director de bază (implicit: ./rsync_env, sau primiți ca argument)
BASE_DIR="${1:-$(pwd)/rsync_env}"

echo "⚙️  Creare structură în: $BASE_DIR"

# 1. Directoare sursă și destinație
mkdir -p "$BASE_DIR/srv/data/documents"
mkdir -p "$BASE_DIR/srv/data/logs"
mkdir -p "$BASE_DIR/srv/data/tmp"
mkdir -p "$BASE_DIR/backup/data"

# 2. Fișiere demo în srv/data/documents
cat > "$BASE_DIR/srv/data/documents/report1.txt" <<EOF
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
EOF

cat > "$BASE_DIR/srv/data/documents/report2.txt" <<EOF
Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
EOF

# Fișiere .bak care trebuie excluse
touch "$BASE_DIR/srv/data/documents/old_report.bak"
touch "$BASE_DIR/srv/data/documents/archive_2020.bak"

# 3. Fișiere demo în srv/data/logs
cat > "$BASE_DIR/srv/data/logs/app.log" <<EOF
2025-04-29 10:00:00 INFO Application started
EOF

cat > "$BASE_DIR/srv/data/logs/error.log" <<EOF
2025-04-29 10:05:00 ERROR Unexpected condition
EOF

# Fișiere .bak în logs
touch "$BASE_DIR/srv/data/logs/old_error.bak"

# 4. Fișier temporar în tmp/
echo "temporary data" > "$BASE_DIR/srv/data/tmp/session.tmp"

# 5. Fișiere demo în backup/data (gol)
touch "$BASE_DIR/backup/data/.placeholder"

# 6. Fișier de excludere pentru rsync
cat > "$BASE_DIR/exclude.txt" <<EOF
*.bak
tmp/
EOF

echo "✅ Structura și fișierele au fost create."
echo "📁 Directoare:"
echo "  - Source: $BASE_DIR/srv/data/"
echo "  - Dest:   $BASE_DIR/backup/data/"
echo "📄 Fișier patterns rsync exclude: $BASE_DIR/exclude.txt"
