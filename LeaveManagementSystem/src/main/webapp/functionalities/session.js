/*let sessionTimeout;
const sessionTimeoutDuration = 5 * 1000; // 5 minutes in milliseconds

function resetSessionTimeout() {
  clearTimeout(sessionTimeout);
  sessionTimeout = setTimeout(function() {
    alert('Your session has expired due to inactivity.');
        window.location.href = 'http://localhost:6996/session?sessionTimeout=yes';
      }, sessionTimeoutDuration);
}
resetSessionTimeout();
document.addEventListener('mousemove', resetSessionTimeout);
document.addEventListener('keypress', resetSessionTimeout);*/






let sessionTimeout;
const sessionTimeoutDuration = 10 * 60 * 1000; 

function resetSessionTimeout() {
  clearTimeout(sessionTimeout);
  sessionTimeout = setTimeout(function() {
 
    const userChoice = confirm('Your session is about to expire. Do you want to extend your session?');

    if (userChoice) {
    
      resetSessionTimeout();
    } else {
   
      window.location.href = 'http://localhost:6996/emplogout';
    }
  }, sessionTimeoutDuration);
}
resetSessionTimeout();
document.addEventListener('mousemove', resetSessionTimeout);
document.addEventListener('keypress', resetSessionTimeout);