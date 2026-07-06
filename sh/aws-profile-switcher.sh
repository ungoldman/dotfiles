awsp() {
  local profile="$1"
  local config_file="$HOME/.aws/config"
  local region
  local cluster
  [[ $profile ]] || {
    echo "Usage: awsp <profile>";
    echo "Available profiles:";
    awk '/\[profile /{gsub(/\[profile |\]/,""); print "  - "$0}' "$config_file";
    return 1;
  }
  region=$(awk -v prof="$profile" '$0 ~ "\\[profile " prof "\\]"{found=1} found&&$1=="region"{print $3;exit}' "$config_file")
  [[ $region ]] || { echo "Profile '$profile' not found or region not set in $config_file"; return 1; }
  cluster=$(awk -v prof="$profile" '$0 ~ "\\[profile " prof "\\]"{found=1} found&&$1=="eks_cluster"{print $3;exit}' "$config_file")
  [[ $cluster ]] || { echo "Profile '$profile' not found or cluster not set in $config_file"; return 1; }
  echo "Switching to AWS profile: $profile (region: $region, cluster: $cluster)"
  export AWS_PROFILE="$profile"
  aws --region="$region" eks update-kubeconfig --name "$cluster"
}
