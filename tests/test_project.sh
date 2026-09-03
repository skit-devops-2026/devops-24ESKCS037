#!/usr/bin/env bash
set -e

echo "Running MedCare project tests..."

grep -q 'id="loginForm"' frontend/login.html
grep -q 'id="email" type="email"' frontend/login.html
grep -q 'id="password" type="password"' frontend/login.html
grep -q 'required' frontend/login.html
grep -q 'js/auth.js' frontend/login.html

echo "Login page tests passed."

grep -q 'id="signupForm"' frontend/signUp.html
grep -q 'id="email" type="email"' frontend/signUp.html
grep -q 'id="password" type="password" minlength="6"' frontend/signUp.html
grep -q 'id="confirm" type="password"' frontend/signUp.html
grep -q 'id="role"' frontend/signUp.html
grep -q 'js/auth.js' frontend/signUp.html

echo "Signup page tests passed."
