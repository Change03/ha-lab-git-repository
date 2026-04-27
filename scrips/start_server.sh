cat > scripts/start_server.sh <<'EOF'
#!/bin/bash
systemctl restart nginx
EOF