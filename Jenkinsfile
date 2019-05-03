
pipeline{
agent vagrant
stages{
stage('Deploiement Ansible') {
    steps{
    ansiblePlaybook (
      become: true,
      playbook: 'webserver.yml '
 
  )
}
}
}
