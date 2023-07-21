PR_ID=16
version_tags=$(gh pr view $PR_ID --json labels | jq -r ".labels[].name") #| grep "version")

echo $version_tags

if [[ $(echo $version_tags | wc -l) -gt 1 ]]; then
    echo "multiple version labels..."
else
    echo "only one version label"
fi
