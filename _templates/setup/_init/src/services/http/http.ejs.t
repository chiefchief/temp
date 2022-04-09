---
to: src/services/http/http.ts
unless_exists: true
---
import axios, {AxiosInstance, AxiosRequestConfig} from 'axios';
import {Urls} from '@constants';

const defaultHeaders = {
  'Content-Type': 'application/json',
  Accept: 'application/json',
};

const baseURL = 'http://192.168.0.1:1204/';

export const instance: AxiosInstance = axios.create({
  baseURL,
  timeout: 24000,
  timeoutErrorMessage: 'Timeout!!',
  headers: defaultHeaders,
});

const addToken = (token: string) => {
  instance.defaults.headers.common.Authorization = `Bearer ${token}`;
};

const removeToken = () => {
  delete instance.defaults.headers.common.Authorization;
};

const get = <R = unknown, D = unknown>(url: Urls, config?: AxiosRequestConfig<D>) => instance.get<R>(url, config);

const post = <R = unknown, D = unknown>(url: Urls, data?: D, config?: AxiosRequestConfig<D>) =>
  instance.post<R>(url, data, config);

const put = <R = unknown, D = unknown>(url: Urls, data?: D, config?: AxiosRequestConfig<D>) =>
  instance.put<R>(url, data, config);

export const httpService = {
  addToken,
  removeToken,
  get,
  post,
  put,
};
