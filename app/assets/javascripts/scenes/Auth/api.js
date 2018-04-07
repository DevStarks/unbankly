import constants from '../../config/constants';

// export const login = (email, password) => {
//   return fetch('http://127.0.0.1:3000/auth/sign_in', {
//     method: 'POST',
//     headers: {
//       Origin: 'http://127.0.0.1:3000',
//       Accept: 'application/json',
//       'Content-Type': 'application/json',
//     },
//     body: JSON.stringify({
//       user: {
//         email,
//         password,
//       }
//     })
//   }).catch((error) => {
//       console.error(error);
//     });
// };

export const signup = (email, password) => {
  return fetch('http://127.0.0.1:3000/auth/', {
    method: 'POST',
    headers: {
      // Origin: 'http://127.0.0.1:3000',
      Accept: 'application/json',
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      email,
      password,
      confirm_success_url: ''
    })
  });
};
