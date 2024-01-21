if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/PRVOFFCL/VJ-FILTER-BOT.git /VJ-FILTER-BOT 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /VJ-FILTER-BOT 
fi
cd /THALAPATHY-FILTER-BOT 
pip3 install -U -r requirements.txt
echo "Starting PRVOFFCL...."
python3 bot.py
