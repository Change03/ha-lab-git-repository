cat > scripts/before_install.sh <<'EOF'
#!/bin/bash
rm -rf /var/www/html/*
EOF