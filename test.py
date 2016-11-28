import os
import app
import unittest
import tempfile
import io

class AppTestCase(unittest.TestCase):

	def setUp(self):
		self.db_fd, app.app.config['DATABASE'] = tempfile.mkstemp()
		app.app.config['TESTING'] = True
		self.app = app.app.test_client()

	def tearDown(self):
		os.close(self.db_fd)
		os.unlink(app.app.config['DATABASE'])

	def test_image(self):  
		data = dict(file=(io.BytesIO(b'test'), 'test.jpg'))
		res = self.app.post('/upload', data=data, follow_redirects=True)
		assert res.status_code == 200
		assert 'file saved' in res.data

if __name__ == '__main__':
	unittest.main()
