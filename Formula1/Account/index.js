const forma = document.getElementById('forma');
const ime = document.getElementById('ime');
const email = document.getElementById('email');

forma.addEventListener('submit', function (ev) {
    let imeVrednost = ime.value.trim();
    if (imeVrednost === null || imeVrednost === "") {
        alert('Polje za ime ne sme biti prazno.');
        ev.preventDefault();
        return false;
    }

    const malaSlova = [];
    const velikaSlova = [];
    for (let i = 0; i < 26; ++i) {
        malaSlova[i] = String.fromCharCode(97 + i);
        velikaSlova[i] = String.fromCharCode(65 + i);
    }

    if (velikaSlova.indexOf(imeVrednost[0]) === -1) {
        alert('Prvo slovo imena mora biti veliko.');
        ev.preventDefault();
        return false;
    }
    for (let i = 1; i < imeVrednost.length; i++) {
        if (malaSlova.indexOf(imeVrednost[i]) === -1) {
            alert('Ime ne sme sadrzati nedozvoljene karaktere.');
            ev.preventDefault();
            return false;
        }
    }

    let emailVrednost = email.value.trim();
    let manki = emailVrednost.indexOf('@');
    let poslednjaTackica = emailVrednost.lastIndexOf('.');
    if (manki === -1 || poslednjaTackica === -1 || poslednjaTackica < manki) {
        alert('Email nije u dobrom formatu.');
        ev.preventDefault();
        return false;
    }
});