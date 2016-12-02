apt update
curl https://get.docker.com/ | sh
curl -L "https://github.com/docker/compose/releases/download/1.9.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

git clone https://github.com/rpiml/okcollege-dev.git okcollege
cd okcollege
git clone https://github.com/rpiml/okcollege-survey-training-preprocessor.git training-preprocessor
git clone https://github.com/rpiml/okcollege-predictor-preprocessor.git predictor-preprocessor
git clone https://github.com/rpiml/okcollege-college-training-preprocessor.git college-training-preprocessor
git clone https://github.com/rpiml/okcollege-ml-predictor.git ml-predictor
git clone https://github.com/rpiml/okcollege-web-api.git web-api
git clone https://github.com/rpiml/okcollege-web-client.git web-client

echo "\nexport PATH=\"$PATH:$(pwd)/bin\"" >> ~/.bashrc
