import http from 'k6/http';
import { check, sleep } from 'k6';

export const options = {
  stages: [
    { duration: '1m', target: 1000 },
    { duration: '5m', target: 1000 }, 
    { duration: '1m', target: 0 },
  ],
};

export default function () {
  const url = 'http://52.226.155.13/';
  const response = http.get(url);

  check(response, {
    'is status 200': (r) => r.status === 200,
  });

  sleep(1);
}
