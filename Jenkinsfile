
pipeline{
agent all
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
