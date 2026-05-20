const haloDunia = require('./index');

test('Memastikan fungsi mengembalikan teks yang benar', () => {
    expect(haloDunia()).toBe("Halo Dunia dari CI/CD!");
});