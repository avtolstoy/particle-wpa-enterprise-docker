# particle-wpa-enterprise-docker
A Docker image with a test FreeRADIUS configuration to test EAP-TLS and PEAP/MSCHAPv2 authentication.


## Building a docker image

```
docker build --no-cache=true -t particle-wpa-enterprise .
```

## Running

```
docker run -p 0.0.0.0:1812:1812/udp particle-wpa-enterprise
```

## Access point configuration
You should point your access point to a host running this Docker image. Radius security key is: `particle`.

## Device configuration

### PEAP/MSCHAPv2 authentication
```
Username: particle
Password: particle2017
CA: certs/ca.crt
```

### EAP-TLS
```
Client certificate: certs/client1.crt
Private key: certs/client1.key
CA: certs/ca.crt
```

```
Client certificate: certs/client2_fullchain.crt
Private key: certs/client2.key
CA: certs/ca.crt
```
