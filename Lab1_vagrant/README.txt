Ce Lab a pour objectifs: 
1. Deployer deux VMs via Vagrant (Infrastructure as code )
1. Créer une image 
2. Tester votre image 
3. Gerez vos images sur dockerhub
4. Liez votre compte github au dockerhub (Automatisation)


######################### Decomposition du vagrant file #########################

a.  Déclaration de la configuration Vagrant : Vagrant.configure("2") do |config|

  Vagrant.configure("2") : Spécifie que l'on utilise la version 2 de la configuration Vagrant.
  do |config| : On définit un bloc de configuration où config est l'objet principal qui contient la configuration des machines virtuelles.
  
b. Configuration de la VM Master (config.vm.define "master" do |master| : Cette ligne définit une machine virtuelle nommée master.)

   Definition de la box:
    --> master.vm.box = "ubuntu/focal64" : La VM utilise Ubuntu 20.04 (focal64) comme système d’exploitation.
	
   Nom et adresse IP 
    --> master.vm.hostname = "master" : hostname Définit le nom de la machine comme master.
    --> master.vm.network "private_network", ip: "190.168.10.1" : configure une IP privée pour que les machines puissent communiquer entre elles. Ici, master aura l’IP 190.168.10.1.
    
   Installation de Docker, Ansible et git 
   
    --> provision "shell" : Permet d’exécuter des commandes shell après la création de la VM.
	--> apt-get update -y : Met à jour les paquets Ubuntu.
	--> apt-get install -y ansible docker.io python3-pip git : installation ansible(Permet d'automatiser la gestion des machines.)/ (Docker : Utilisé pour la conteneurisation.)/ git gere le versioning /Python3-pip : Gestionnaire de paquets Python (nécessaire pour certains modules Ansible).
     