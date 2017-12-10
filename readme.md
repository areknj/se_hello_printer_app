Uruchamianie applikacji:

 ::

   # jako zwykły program
   python main.py

   # albo:
   PYTHONPATH=. FLASK_APP=hello_world flask run

- Uruchamianie testów (see: http://doc.pytest.org/en/latest/capture.html):

 ::

   PYTHONPATH=. py.test
   PYTHONPATH=. py.test  --verbose -s
