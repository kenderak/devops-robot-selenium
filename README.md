# devops-robot-selenium

Download ChromeDriver [https://chromedriver.chromium.org/downloads](https://chromedriver.chromium.org/downloads)

Change {SERVER_IP} -> test.robot & keywords.resource

*** Variables ***

${URL1}     http://{SERVER_IP}/index1

${URL2}     http://{SERVER_IP}/index2

## Test

```python
robot -d logs test.robot
```
