const readline = require('readline');

const rl = readline.createInterface({
    // function is used to read the input from the user
    input: process.stdin,
    output: process.stdout
});

function calculateAge(dateOfBirth) {
    const today = new Date();
    const birthDate = new Date(dateOfBirth);
    let age = today.getFullYear() - birthDate.getFullYear();
    const monthDiff = today.getMonth() - birthDate.getMonth();
    
    if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }
    
    return age;
}

rl.question('Enter your date of birth (YYYY-MM-DD): ', (dateOfBirth) => {
    const age = calculateAge(dateOfBirth);
    console.log(`Your age is ${age} years.`);
    rl.close();
});