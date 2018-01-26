import { baseUrl } from '../../config/constants';

export const login = (email, password) => {
  fetch(baseUrl + 'auth/sign_in', {
    method: 'POST',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({ email, password }),
  });
};
