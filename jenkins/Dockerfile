FROM jenkins/jenkins:lts

USER root

# Installer outils nécessaires (Python + pip + git)
RUN apt-get update && \
    apt-get install -y python3 python3-pip git && \
    rm -rf /var/lib/apt/lists/*

# (optionnel mais recommandé) éviter problèmes de permissions
RUN mkdir -p /home/jenkins && \
    chown -R jenkins:jenkins /home/jenkins

USER jenkins