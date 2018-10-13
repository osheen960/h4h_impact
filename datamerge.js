// js file for datamerge
import fs from 'fs';
import path from 'path';
import promisify from 'es6-promisify';
import readline from 'readline';
import GoogleAuth from 'google-auth-library';

const credentialsPath = path.join(__dirname, '.credentials');
const credentialsFile = path.join(credentialsPath, 'client_secret.json');
const tokenFile = path.join(credentialsPath, 'token.json');


export const getClient = async () => {
  const credentials = require(credentialsPath);

  const {
    installed: {
      client_secret: clientSecret,
      client_id: clientId,
      redirect_uris: redirectUrls
    }
  } = credentials;

  const redirectUrl = redirectUrls[0];

  const auth = new GoogleAuth();
  const client = new auth.OAuth2(clientId, clientSecret, redirectUrl);
