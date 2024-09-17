
helm-build:
	helm package ./metrics-app

help-grafana-all:
	curl https://grafana.github.io/helm-charts/index.yaml

helm-unpack-grafana-agent:
	wget -O grafana-agent.tgz https://github.com/grafana/helm-charts/releases/download/grafana-agent-0.42.0/grafana-agent-0.42.0.tgz
	tar -zxvf grafana-agent.tgz

grafana-agent-port-forward:
	export POD_NAME=$(kubectl get pods --namespace ga -l "app.kubernetes.io/instance=grafana-agent-flow" -o jsonpath="{.items[0].metadata.name}")
	kubectl -n ga port-forward $POD_NAME 8888:80

