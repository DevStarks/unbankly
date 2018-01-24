import { generateAuthActions } from 'redux-token-auth';
import { authUrl } from './constants';

const config = {
  authUrl,
  userAttributes: {
    firstName: 'first_name',
    lastName: 'last_name',
    photoURL: 'photo_url',
  },
  userRegistrationAttributes: {
    firstName: 'first_name',
    lastName: 'last_name'
  },
};

const {
  registerUser,
  signInUser,
  signOutUser,
  verifyCredentials,
} = generateAuthActions(config);

// registerUser, signInUser, and signOutUser are Redux Thunk actions
// and thus, when wired through mapDispatchToProps return Promises.

export {
  registerUser,
  signInUser,
  signOutUser,
  verifyCredentials,
};
