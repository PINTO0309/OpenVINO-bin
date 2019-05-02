# OpenVINO-bin
OpenVINO installer storage location

## 1. For Linux
- **[2019 R1.0.1](Linux/download_2019R1.0.1.sh)**
- **[2019 R1](Linux/download_2019R1.sh)**
- **[2018 R5.0.1](Linux/download_2018R5.0.1.sh)**
- **[2018 R5](Linux/download_2018R5.0.0.sh)**
- **[2018 R4](Linux/download_2018R4.sh)**
- **[2018 R3](Linux/download_2018R3.sh)**
- **[2018 R2.0.2](Linux/download_2018R2.0.2.sh)**
- **[2018 R2](Linux/download_2018R2.sh)**
- **[2018 R1.2](Linux/download_2018R1.2.sh)**
- **[2018 R1.1](Linux/download_2018R1.1.sh)**

## 2. For RaspberryPi
- **[2019 R1.0.1](RaspberryPi/download_2019R1.0.1.sh)**
- **[2019 R1](RaspberryPi/download_2019R1.sh)**
- **[2018 R5](RaspberryPi/download_2018R5.sh)**

## 3. Usage
```bash
$ cd ~
$ git clone https://github.com/PINTO0309/OpenVINO-bin.git
$ cd OpenVINO-bin
```
### (1) Linux
```bash
$ Linux/download_2019R1.0.1.sh
```

### (2) RaspberryPi
```bash
$ cd ~
$ /home/pi/OpenVINO-bin/RaspberryPi/download_2019R1.0.1.sh
$ sudo sed -i "s|<INSTALLDIR>|/home/pi/inference_engine_vpu_arm|" /home/pi/inference_engine_vpu_arm/bin/setupvars.sh
```
