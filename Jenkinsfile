pipeline{
   agent any
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
