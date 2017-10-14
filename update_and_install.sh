sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common gnupg2 wget python
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce

wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
rm get-pip.py
sudo pip install docker-compose
