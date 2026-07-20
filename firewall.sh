#!/bin/bash
echo "Настраиваю базовый файрвол..."
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -j DROP
echo "Готово. Правила:"
iptables -L -n -v