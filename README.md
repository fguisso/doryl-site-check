# Doryl site-check
![image](https://user-images.githubusercontent.com/5755568/160461196-3803a87c-1768-473f-8383-692c4a16ebd4.png)
This is a simple Golang webapp that contains an example of a SSRF(Server Side Request Forgery) vulnerability and its main goal is to describe how a malicious user could exploit it.

## What is SSRF?
*from ![PortSwigger Academy](https://portswigger.net/web-security/ssrf).*

Server-side request forgery (also known as SSRF) is a web security vulnerability that allows an attacker to induce the server-side application to make requests to an unintended location.

In a typical SSRF attack, the attacker might cause the server to make a connection to internal-only services within the organization's infrastructure. In other cases, they may be able to force the server to connect to arbitrary external systems, potentially leaking sensitive data such as authorization credentials. 

## What is the impact of SSRF attacks?

A successful SSRF attack can often result in unauthorized actions or access to data within the organization, either in the vulnerable application itself or on other back-end systems that the application can communicate with. In some situations, the SSRF vulnerability might allow an attacker to perform arbitrary command execution.

An SSRF exploit that causes connections to external third-party systems might result in malicious onward attacks that appear to originate from the organization hosting the vulnerable application.

## Setup
Require ![Docker](https://docs.docker.com/get-docker/)
```bash
git clone https://github.com/fguisso/doryl-site-check
cd doryl-site-check
docker build --tag doryl .

# Running
docker run --rm -p 8080:8080 --name doryl -e PORT=8080 -e INTERNAL_PORT=3000 doryl
```
`PORT`: doryl webapp port.
`INTERNAL_PORT`: documents internal server port.

Click here to access the running app: http://localhost:8080/
