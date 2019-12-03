
const changeTo = (e) => {

  console.log(e.currentTarget.id)

  const login = document.getElementById('login');
  const signup = document.getElementById('signup');

  if (e.currentTarget.id==='login') {
    login.classList.add('active');
    signup.classList.remove('active');
  } else {
    signup.classList.add('active');
    login.classList.remove('active');
  }
}

export { changeTo };
