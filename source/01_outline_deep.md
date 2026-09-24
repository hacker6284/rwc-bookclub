# Real-World Cryptography — Deep Outline

Source: David Wong, *Real-World Cryptography*. Outline from authoritative `chapter_headings.json`.

## 0 Foundations (supplemental; not a Wong chapter)

### 0.1 Linear algebra intuition

### 0.2 Calculus, Fourier & transforms

### 0.3 Probability, entropy & information

### 0.4 Group theory, number theory & primes (RSA-relevant math)

### 0.5 Complex numbers, Euler & topology

### 0.6 Digital logic & CPU guts

### 0.7 Networking fundamentals

### 0.8 Error-detecting codes

### 0.9 Historical crypto (Enigma / Bletchley context)

## 1 Introduction

### 1.1 Cryptography is about securing protocols

### 1.2 Symmetric cryptography: What is symmetric encryption?

### 1.3 Kerckhoff’s principle: Only the key is kept secret

### 1.4 Asymmetric cryptography: Two keys are better than one

#### 1.4.1 Key exchanges or how to get a shared secret

#### 1.4.2 Asymmetric encryption, not like the symmetric one

#### 1.4.3 Digital signatures, just like your pen-and-paper signatures

### 1.5 Classifying and abstracting cryptography

### 1.6 Theoretical cryptography vs. real-world cryptography

### 1.7 From theoretical to practical: Choose your own adventure

### 1.8 A word of warning

## 2 Hash functions

### 2.1 What is a hash function?

### 2.2 Security properties of a hash function

### 2.3 Security considerations for hash functions

### 2.4 Hash functions in practice

#### 2.4.1 Commitments

#### 2.4.2 Subresource integrity

#### 2.4.3 BitTorrent

#### 2.4.4 Tor

### 2.5 Standardized hash functions

#### 2.5.1 The SHA-2 hash function

#### 2.5.2 The SHA-3 hash function

#### 2.5.3 SHAKE and cSHAKE: Two extendable output functions (XOF)

#### 2.5.4 Avoid ambiguous hashing with TupleHash

### 2.6 Hashing passwords

## 3 Message authentication codes

### 3.1 Stateless cookies, a motivating example for MACs

### 3.2 An example in code

### 3.3 Security properties of a MAC

#### 3.3.1 Forgery of authentication tag

#### 3.3.2 Lengths of authentication tag

#### 3.3.3 Replay attacks

#### 3.3.4 Verifying authentication tags in constant time

### 3.4 MAC in the real world

#### 3.4.1 Message authentication

#### 3.4.2 Deriving keys

#### 3.4.3 Integrity of cookies

#### 3.4.4 Hash tables

### 3.5 Message authentication codes (MACs) in practice

#### 3.5.1 HMAC, a hash-based MAC

#### 3.5.2 KMAC, a MAC based on cSHAKE

### 3.6 SHA-2 and length-extension attacks

## 4 Authenticated encryption

### 4.1 What’s a cipher?

### 4.2 The Advanced Encryption Standard (AES) block cipher

#### 4.2.1 How much security does AES provide?

#### 4.2.2 The interface of AES

#### 4.2.3 The internals of AES

### 4.3 The encrypted penguin and the CBC mode of operation

### 4.4 A lack of authenticity, hence AES-CBC-HMAC

### 4.5 All-in-one constructions: Authenticated encryption

#### 4.5.1 What’s authenticated encryption with associated data (AEAD)?

#### 4.5.2 The AES-GCM AEAD

#### 4.5.3 ChaCha20-Poly1305

### 4.6 Other kinds of symmetric encryption

#### 4.6.1 Key wrapping

#### 4.6.2 Nonce misuse-resistant authenticated encryption

#### 4.6.3 Disk encryption

#### 4.6.4 Database encryption

## 5 Key exchanges

### 5.1 What are key exchanges?

### 5.2 The Diffie-Hellman (DH) key exchange

#### 5.2.1 Group theory

#### 5.2.2 The discrete logarithm problem: The basis of Diffie-Hellman

#### 5.2.3 The Diffie-Hellman standards

### 5.3 The Elliptic Curve Diffie-Hellman (ECDH) key exchange

#### 5.3.1 What’s an elliptic curve?

#### 5.3.2 How does the Elliptic Curve Diffie-Hellman (ECDH) key exchange work?

#### 5.3.3 The standards for Elliptic Curve Diffie-Hellman

### 5.4 Small subgroup attacks and other security considerations

## 6 Asymmetric encryption and hybrid encryption

### 6.1 What is asymmetric encryption?

### 6.2 Asymmetric encryption in practice and hybrid encryption

#### 6.2.1 Key exchanges and key encapsulation

#### 6.2.2 Hybrid encryption

### 6.3 Asymmetric encryption with RSA: The bad and the less bad

#### 6.3.1 Textbook RSA

#### 6.3.2 Why not to use RSA PKCS#1 v1.5

#### 6.3.3 Asymmetric encryption with RSA-OAEP

### 6.4 Hybrid encryption with ECIES

## 7 Signatures and zero-knowledge proofs

### 7.1 What is a signature?

#### 7.1.1 How to sign and verify signatures in practice

#### 7.1.2 A prime use case for signatures: Authenticated key exchanges

#### 7.1.3 A real-world usage: Public key infrastructures

### 7.2 Zero-knowledge proofs (ZKPs): The origin of signatures

#### 7.2.1 Schnorr identification protocol: An interactive zero-knowledge proof

#### 7.2.2 Signatures as non-interactive zero-knowledge proofs

### 7.3 The signature algorithms you should use (or not)

#### 7.3.1 RSA PKCS#1 v1.5: A bad standard

#### 7.3.2 RSA-PSS: A better standard

#### 7.3.3 The Elliptic Curve Digital Signature Algorithm (ECDSA)

#### 7.3.4 The Edwards-curve Digital Signature Algorithm (EdDSA)

### 7.4 Subtle behaviors of signature schemes

#### 7.4.1 Substitution attacks on signatures

#### 7.4.2 Signature malleability

## 8 Randomness and secrets

### 8.1 What’s randomness?

### 8.2 Slow randomness? Use a pseudorandom number generator (PRNG)

### 8.3 Obtaining randomness in practice

### 8.4 Randomness generation and security considerations

### 8.5 Public randomness

### 8.6 Key derivation with HKDF

### 8.7 Managing keys and secrets

### 8.8 Decentralize trust with threshold cryptography

## 9 Secure transport

### 9.1 The SSL and TLS secure transport protocols

#### 9.1.1 From SSL to TLS

#### 9.1.2 Using TLS in practice

### 9.2 How does the TLS protocol work?

#### 9.2.1 The TLS handshake

#### 9.2.2 How TLS 1.3 encrypts application data

### 9.3 The state of the encrypted web today

### 9.4 Other secure transport protocols

### 9.5 The Noise protocol framework: A modern alternative to TLS

#### 9.5.1 The many handshakes of Noise

#### 9.5.2 A handshake with Noise

## 10 End-to-end encryption

### 10.1 Why end-to-end encryption?

### 10.2 A root of trust nowhere to be found

### 10.3 The failure of encrypted email

#### 10.3.1 PGP or GPG? And how does it work?

#### 10.3.2 Scaling trust between users with the web of trust

#### 10.3.3 Key discovery is a real issue

#### 10.3.4 If not PGP, then what?

### 10.4 Secure messaging: A modern look at end-to-end encryption with Signal

#### 10.4.1 More user-friendly than the WOT: Trust but verify

#### 10.4.2 X3DH: the Signal protocol’s handshake

#### 10.4.3 Double Ratchet: Signal’s post-handshake protocol

### 10.5 The state of end-to-end encryption

## 11 User authentication

### 11.1 A recap of authentication

### 11.2 User authentication, or the quest to get rid of passwords

#### 11.2.1 One password to rule them all: Single sign-on (SSO) and password managers

#### 11.2.2 Don’t want to see their passwords? Use an asymmetric password-authenticated key exchange

#### 11.2.3 One-time passwords aren’t really passwords: Going passwordless with symmetric keys

#### 11.2.4 Replacing passwords with asymmetric keys

### 11.3 User-aided authentication: Pairing devices using some human help

#### 11.3.1 Pre-shared keys

#### 11.3.2 Symmetric password-authenticated key exchanges with CPace

#### 11.3.3 Was my key exchange MITM’d? Just check a short authenticated string (SAS)

## 12 Crypto as in cryptocurrency?

### 12.1 A gentle introduction to Byzantine fault-tolerant (BFT) consensus algorithms

#### 12.1.1 A problem of resilience: Distributed protocols to the rescue

#### 12.1.2 A problem of trust? Decentralization helps

#### 12.1.3 A problem of scale: Permissionless and censorship-resistant networks

### 12.2 How does Bitcoin work?

#### 12.2.1 How Bitcoin handles user balances and transactions

#### 12.2.2 Mining BTCs in the digital age of gold

#### 12.2.3 Forking hell! Solving conflicts in mining

#### 12.2.4 Reducing a block’s size by using Merkle trees

### 12.3 A tour of cryptocurrencies

#### 12.3.1 Volatility

#### 12.3.2 Latency

#### 12.3.3 Blockchain size

#### 12.3.4 Confidentiality

#### 12.3.5 Energy efficiency

### 12.4 DiemBFT: A Byzantine fault-tolerant (BFT) consensus protocol

#### 12.4.1 Safety and liveness: The two properties of a BFT consensus protocol

#### 12.4.2 A round in the DiemBFT protocol

#### 12.4.3 How much dishonesty can the protocol tolerate?

#### 12.4.4 The DiemBFT rules of voting

#### 12.4.5 When are transactions considered finalized?

#### 12.4.6 The intuitions behind the safety of DiemBFT

## 13 Hardware cryptography

### 13.1 Modern cryptography attacker model

### 13.2 Untrusted environments: Hardware to the rescue

#### 13.2.1 White box cryptography, a bad idea

#### 13.2.2 They’re in your wallet: Smart cards and secure elements

#### 13.2.3 Banks love them: Hardware security modules (HSMs)

#### 13.2.4 Trusted Platform Modules (TPMs): A useful standardization of secure elements

#### 13.2.5 Confidential computing with a trusted execution environment (TEE)

### 13.3 What solution is good for me?

### 13.4 Leakage-resilient cryptography or how to mitigate side-channel attacks in software

#### 13.4.1 Constant-time programming

#### 13.4.2 Don’t use the secret! Masking and blinding

#### 13.4.3 What about fault attacks?

## 14 Post-quantum cryptography

### 14.1 What are quantum computers and why are they scaring cryptographers?

#### 14.1.1 Quantum mechanics, the study of the small

#### 14.1.2 From the birth of quantum computers to quantum supremacy

#### 14.1.3 The impact of Grover and Shor’s algorithms on cryptography

#### 14.1.4 Post-quantum cryptography, the defense against quantum computers

### 14.2 Hash-based signatures: Don’t need anything but a hash function

#### 14.2.1 One-time signatures (OTS) with Lamport signatures

#### 14.2.2 Smaller keys with Winternitz one-time signatures (WOTS)

#### 14.2.3 Many-times signatures with XMSS and SPHINCS+

### 14.3 Shorter keys and signatures with lattice-based cryptography

#### 14.3.1 What’s a lattice?

#### 14.3.2 Learning with errors (LWE), a basis for cryptography?

#### 14.3.3 Kyber, a lattice-based key exchange

#### 14.3.4 Dilithium, a lattice-based signature scheme

### 14.4 Do I need to panic?

## 15 Is this it? Next-generation cryptography

### 15.1 The more the merrier: Secure multi-party computation (MPC)

#### 15.1.1 Private set intersection (PSI)

#### 15.1.2 General-purpose MPC

#### 15.1.3 The state of MPC

### 15.2 Fully homomorphic encryption (FHE) and the promises of an encrypted cloud

#### 15.2.1 An example of homomorphic encryption with RSA encryption

#### 15.2.2 The different types of homomorphic encryption

#### 15.2.3 Bootstrapping, the key to fully homomorphic encryption

#### 15.2.4 An FHE scheme based on the learning with errors problem

#### 15.2.5 Where is it used?

### 15.3 General-purpose zero-knowledge proofs (ZKPs)

#### 15.3.1 How zk-SNARKs work

#### 15.3.2 Homomorphic commitments to hide parts of the proof

#### 15.3.3 Bilinear pairings to improve our homomorphic commitments

#### 15.3.4 Where does the succinctness come from?

#### 15.3.5 From programs to polynomials

#### 15.3.6 Programs are for computers; we need arithmetic circuits instead

#### 15.3.7 An arithmetic circuit to a rank-1 constraint system (R1CS)

#### 15.3.8 From R1CS to a polynomial

#### 15.3.9 It takes two to evaluate a polynomial hiding in the exponent

## 16 When and where cryptography fails

### 16.1 Finding the right cryptographic primitive or protocol is a boring job

### 16.2 How do I use a cryptographic primitive or protocol? Polite standards and formal verification

### 16.3 Where are the good libraries?

### 16.4 Misusing cryptography: Developers are the enemy

### 16.5 You’re doing it wrong: Usable security

### 16.6 Cryptography is not an island

### 16.7 Your responsibilities as a cryptography practitioner, don’t roll your own crypto
