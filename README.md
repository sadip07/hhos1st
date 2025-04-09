# Advanced DDoS Toolkit

A comprehensive toolkit for DDoS attack simulation and protection, developed for educational and security testing purposes.

## 📋 Overview

This toolkit includes:

1. **DDoS Attack Tool**: A powerful multi-threaded DDoS attack simulator supporting various attack methods
2. **Protection Bypass Tool**: Analyzes target defenses and recommends optimal attack parameters
3. **Protection Tools**: Scripts for traffic analysis, rate limiting, and web monitoring
4. **Educational Resources**: Documentation about DDoS attacks and protection strategies

> **⚠️ WARNING**: This toolkit should **ONLY** be used in controlled environments with proper authorization. Usage against unauthorized targets is illegal and unethical.

## 🛠️ Components

### Attack Tools

- **ddos_tool.py**: Advanced DDoS attack simulator with multiple attack methods:
  - SYN Flood, UDP Flood, ICMP Flood, HTTP Flood, Slowloris, ACK Flood, DNS Flood, and Mixed attacks
  - IP spoofing and randomization capabilities
  - Real-time statistics and colorized output

- **bypass_protection.py**: Protection analysis and bypass tool:
  - Detects WAFs, CDNs, rate limiting, and other protections
  - Recommends optimal attack parameters for specific targets
  - Can automatically execute optimized attacks

- **test_your_defenses.py**: Safe tool for testing your own infrastructure

### Protection and Analysis Tools

- **tools/traffic_analyzer.py**: Network traffic monitoring for DDoS detection
- **tools/rate_limiter.py**: Connection rate limiting implementation
- **tools/web_monitor.py**: Web interface for monitoring traffic
- **tools/security_config.py**: Security configuration utilities
- **tools/test_generator.py**: Traffic generation for testing defenses

### Documentation and Guides

- **USAGE.md**: Detailed instructions for using the attack tools
- **MITIGATION.md**: Comprehensive guide on DDoS mitigation strategies
- **DDoS_Information.md**: Technical information about attack types and impacts

## 📥 Installation

1. Clone the repository and navigate to the directory:
   ```bash
   git clone https://github.com/yourusername/ddos-toolkit.git
   cd ddos-toolkit
   ```

2. Install required packages:
   ```bash
   pip install -r requirements.txt
   ```

3. Ensure you have proper permissions (some features require administrative/root privileges).

## 🚀 Quick Start

### 1. DDoS Attack Tool

Standard usage:
```bash
python ddos_tool.py <target_ip> -t <attack_type> -d <duration> -r <rate> -n <threads>
```

Example (SYN flood):
```bash
python ddos_tool.py 192.168.1.10 -t syn -d 30 -r 500 -n 5
```

### 2. Protection Bypass Tool

Analyze a target and get recommended attack parameters:
```bash
python bypass_protection.py <target_ip> -p <port>
```

Analyze and automatically execute the optimized attack:
```bash
python bypass_protection.py <target_ip> -p <port> --execute
```

Save analysis results to a JSON file:
```bash
python bypass_protection.py <target_ip> -p <port> --output results.json
```

### 3. Safe Defense Testing

Test your own infrastructure with limited impact:
```bash
python test_your_defenses.py <your_server> -t http
```

### 4. Protection Tools

Traffic Analyzer:
```bash
python tools/traffic_analyzer.py --interface eth0 --threshold 100
```

Rate Limiter:
```bash
sudo python tools/rate_limiter.py --port 80 --max-rate 100
```

Web Monitor:
```bash
python tools/web_monitor.py
# Then access http://localhost:5000
```

## 🔒 Legal Disclaimer

This toolkit is provided for educational and ethical testing purposes only. The authors are not responsible for any misuse or damage caused by this program. Using this toolkit against targets without explicit permission may be illegal in your jurisdiction and could result in severe legal consequences.

## 📚 Educational Resources

- **DDoS_Information.md**: Technical guide about DDoS attacks, types, and impacts
- **MITIGATION.md**: Comprehensive guide on DDoS protection strategies
- **USAGE.md**: Detailed usage instructions for the attack tools

## 💡 Legitimate Use Cases

1. **Security Testing**: Test your own infrastructure resilience
2. **Education**: Learn about attack vectors and mitigation techniques
3. **Security Research**: Study DDoS patterns and develop countermeasures

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

# DDoS Web Monitor

A web-based monitoring tool for visualizing network traffic and detecting potential DDoS attacks.

## Installation

The application is packaged as a standalone executable that requires no additional installation.

### Requirements

- Windows 10 or later
- Internet browser (Chrome, Firefox, Edge, etc.)

### Files

- `run_monitor.bat` - Batch file to start the application
- `tools/dist/web_monitor.exe` - Executable application

## Usage

1. Double-click the `run_monitor.bat` file to start the DDoS Web Monitor
2. Open your web browser and navigate to http://localhost:5000
3. The dashboard will display simulated network traffic and attack detection

## Features

- Real-time visualization of network traffic
- Connection monitoring
- Attack detection and alerts
- Traffic statistics

## Notes

- This is a standalone executable - no Python installation required
- The web interface automatically refreshes every 10 seconds
- The data shown is simulated for educational purposes 