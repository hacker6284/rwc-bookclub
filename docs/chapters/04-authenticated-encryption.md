# 4 Authenticated encryption

- [Almost All Web Encryption Works Like This (SP Networks) - Computerphile](https://www.youtube.com/watch?v=DLjzI5dX8jc) — `computerphile`
- [Feistel Cipher - Computerphile](https://www.youtube.com/watch?v=FGhj3CGxl8I) — `computerphile`
## 4.1 What’s a cipher?

## 4.2 The Advanced Encryption Standard (AES) block cipher

- [128 Bit or 256 Bit Encryption? - Computerphile](https://www.youtube.com/watch?v=pgzWxOtk1zg) — `computerphile`
- [AES Explained (Advanced Encryption Standard) - Computerphile](https://www.youtube.com/watch?v=O4xNJsjtN6E) — `computerphile`
- [One Encryption Standard to Rule Them All! - Computerphile](https://www.youtube.com/watch?v=VYech-c5Dic) — `computerphile`
### 4.2.1 How much security does AES provide?

### 4.2.2 The interface of AES

- [6502 serial interface](https://www.youtube.com/watch?v=oLYLnb7kpLg) — `ben_eater`
- [RS232 interface with the 6551 UART](https://www.youtube.com/watch?v=zsERDRM1oy8) — `ben_eater`
- [SPI: The serial peripheral interface](https://www.youtube.com/watch?v=MCi7dCBhVpQ) — `ben_eater`
### 4.2.3 The internals of AES

#### SubBytes

#### ShiftRows

#### MixColumns

#### AddRoundKey

#### S-box

## 4.3 The encrypted penguin and the CBC mode of operation

- [Modes of Operation - Computerphile](https://www.youtube.com/watch?v=Rk0NIQfEXBA) — `computerphile`
### IV

### ECB failure (Tux penguin)

### CBC chaining

## 4.4 A lack of authenticity, hence AES-CBC-HMAC

### Encrypt-then-MAC

### MAC-then-Encrypt

### padding oracle

## 4.5 All-in-one constructions: Authenticated encryption

### 4.5.1 What’s authenticated encryption with associated data (AEAD)?

### 4.5.2 The AES-GCM AEAD

- [AES GCM (Advanced Encryption Standard in Galois Counter Mode) - Computerphile](https://www.youtube.com/watch?v=-fpVv_T4xwA) — `computerphile`
#### GHASH

#### nonce reuse in GCM

### 4.5.3 ChaCha20-Poly1305

- [Chacha Cipher - Computerphile](https://www.youtube.com/watch?v=UeIpq-C-GSA) — `computerphile`
#### ChaCha20

#### Poly1305

## 4.6 Other kinds of symmetric encryption

### 4.6.1 Key wrapping

#### AES Key Wrap

- [5040 and other Anti-Prime Numbers - Numberphile](https://www.youtube.com/watch?v=2JM2oImb9Qg) — `numberphile`
### 4.6.2 Nonce misuse-resistant authenticated encryption

#### AES-GCM-SIV

### 4.6.3 Disk encryption

#### XTS-AES

### 4.6.4 Database encryption

## Summary

## DES / 3DES (historical)

## Feistel networks

## Substitution–Permutation networks

## Zig Zag Decryption

- [Zig Zag Decryption - Computerphile](https://www.youtube.com/watch?v=yxx3Bkmv3ck) — `computerphile`
