cd ..
echo "description:"
read description
git add .
git commit -m "$description"
git push origin main

