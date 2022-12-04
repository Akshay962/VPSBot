if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Akshay962/VPSbot.git /VPSbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /VPSbot
fi
cd /VPSbot
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
