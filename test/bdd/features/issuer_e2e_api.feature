#
# Copyright SecureKey Technologies Inc. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#

@all
@issuer_rest
Feature: Issuer VC REST API

  @issueCred_api
  Scenario: Issue Credential API
    Given "University" has a DID
    Then  "University" application service verifies the credential created by Issuer Service issueCredential API with it's DID

  @composeAndIssueCred_api
  Scenario: Compose and Issue Credential API
    Given "University" has a DID
    Then  "University" application service verifies the credential created by Issuer Service composeAndIssueCredential API with it's DID

  @createDID_issueCred_api
  Scenario: Issue Credential API with Create DID steps
    Given Public key stored in "publicKey" variable generated by calling Issuer Service Generate Keypair API
    And   A new DID Document is created using the public key stored in "publicKey" and store the generate DID in "did" variable
    Then  Verify the proof value generated using the Issuer Service Issue Credential API with the DID stored in "did" variable
