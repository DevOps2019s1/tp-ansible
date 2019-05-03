
pipeline{
agent vagrant
stages{
stage('Deploiement Ansible') {
    ansiblePlaybook (
      become: true,
      playbook: 'webserver.yml '
 
  )
}
}