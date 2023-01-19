import requests

url = "http://104.247.163.118:8088/geon/fileservice/uploader"

files = {'file': open('C:\Users\omers\OneDrive\Masaüstü\difference.jpg','rb')}

headers = {
  'Content-Type': 'multipart/form-data'
}

response = requests.request("POST", url, headers=headers)

print(response.text)
