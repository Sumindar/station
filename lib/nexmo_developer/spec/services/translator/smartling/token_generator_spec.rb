require 'rails_helper'

RSpec.describe Translator::Smartling::TokenGenerator do
  subject { described_class }

  describe '#client' do
    it 'creates a Smartling SDK instance' do
      expect(subject.client).to be_an_instance_of(Smartling::Api)
    end
  end

  describe '#token' do
    it 'creates a JSON Web Token for Smartling' do
      allow(subject).to receive(:token).and_return(sample_jwt)

      expect(subject.token).to eql(sample_jwt)
    end
  end

  def sample_jwt
    'ey65gy654t34tswfssfdsdf3.eyJdssdfkwefiews32345234124rewfwef3gwefdq3e2y04MjMyYjMxNmM2YWMiLCJlesdfw3rwef345324eqfdsjyhgwedawd23wegrgeNDcxLCJpc3MiOiJodHRwczovL3Nzby5zbWFydGxpbmcuY29tL2F1dGgvcmVhbG1zL1NtYXJ0bGluZyIsImF1ZCI6ImF1dGhlbnRpY2F0aW9uLXNlcnZpY2UiLCJzdWIiOiIyZjg2MTVjZS0wMTQ5LTQzNGYtOThhMS0yMTcxY2ZlMzE4ODUiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJhdXRoZW50aWNhdGlvbi1zZXJ2aWNlIiwic2Vzc2lvbl9zdGF0ZSI6Ijk4OGNlNDllLTJjYTUtNDhlMy1iYzIyLWMwMjQ1NzQ5NDRlNSIsImNsaWVudF9zZXNzaW9uIjoiYjVkODRmYmEtODFkMi00MWYyLWFiOGQtOTdiMGQxYTI1M2MyIiwiYWxsb3dlZC1vcmlnaW5zIjpbXSwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbIlJPTEVfQVBJX1VTRVIiLCJ1c2VyIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsiYWNjb3rgef4523rwefdCIsInZpZXctcHJvZmlsZSJdfX0sInVpZCI6IjA2MWFlMmEyZWI2NCIsIm5hbWUiOiJuZXhtby1kZXZlbG9wZXIiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJhcGlVc2VyK3Byb2plY3QrMWRmM2I5ZGYyQHNtYXJ0bGluZy5jb20iLCJnaXZlbl9uYW1lIjoiQVBJIFVzZXIiLCJmYW1pbHlfbmFtZSI6Im5leG1vLWRldmVsb3BlciIsImVtYWlsIjoiYXBpVXNlcitwcm9qZWN0KzFkZjNiOWRmMkBzbWFydGxpbmcuY29tIn0.X_cXsqYXrxJzoBpRr3W0duiwPv72QHWtQ02Rhs_ZH9-nGmBb7jZ2MtwX-QOMJanIjFGeCwfsf3ozEemWY3HvpwFqv55HOFt2uVAFj3mLiADtSbKKiV-ixh5sY1pAcsjgNeQ-feMXjwpOIFgqQOWDhwc_yvDqAk9wKdMECMNcYa8'
  end
end
