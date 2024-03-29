if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone Nahidctg/Ctgbot /Nahidctg/Ctgbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Nahidctg/Ctgbot
fi
cd /Nahidctg/Ctgbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
