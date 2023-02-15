### HW-1
минимальный сервис, который отвечает на порту 8000  
имеет http-метод GET /health/  
RESPONSE: {"status": "OK"} 

Для запуска:
1) docker run -d --rm --name diops -p 80:8000 diops/otus-msa-hw1:latest
2) Перейти на http://localhost/health
3) docker stop diops
 

### HW-2

1) Включить ingress-controller с помощью:
   minikube addons enable ingress
2) Выполнить kubectl apply -f ./config
3) Добавить адресс ингресса в /etc/hosts
4) Проверить curl http://arch.homework/health 
