const fs = require('fs');

for (let i=0; i<500; i++) {
    fs.writeFileSync(`files/file${i}`, 'asdf'); 
}
