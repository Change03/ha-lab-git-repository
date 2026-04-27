cat > scripts/validate_service.sh <<'EOF'
#!/bin/bash
sleep 3
STATUS=$(curl -s -o /dev/null -w '%{http_code}' http://localhost)
if [ "$STATUS" -eq 200 ]; then
  echo "Nginx 응답 정상: HTTP 200"
  exit 0
else
  echo "배포 검증 실패: HTTP $STATUS"
  exit 1
fi
EOF