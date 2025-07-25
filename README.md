# Decisões

A arquitetura aqui presente é baseada na topologia Hub-spoke da Azure.
https://learn.microsoft.com/en-us/azure/architecture/networking/architecture/hub-spoke


## Hub 
Na network do Hub foram implementados todos os serviços da AWS que são partilhados pelos recursos de cada spoke. Assim, e tendo em conta o nosso caso de uso, os serviços que fazem sentido estar neste espaço são:

- Grafana: Permite criar dashboards com base nos logs disponibilizados pelo Prometheus;
- Firewall: Filtra todo o tipo de tráfego;
- Application Gateway + WAF: Associamos uma WAF ao Application Load Balancer, de forma a filtrar tráfego malicioso HTTP/s.


## Spokes
O spoke representa, no nosso caso, os diferentes ambientes da nossa aplicação, isolando cada um deles.