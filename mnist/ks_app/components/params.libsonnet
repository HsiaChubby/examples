{
  global: {},
  components: {
    train: {
      batchSize: 100,
      envVariables: 'GOOGLE_APPLICATION_CREDENTIALS=/var/secrets/user-gcp-sa.json',
      exportDir: 'gs://kubeflow-ci_temp/mnist-jlewi/export',
      image: 'gcr.io/kubeflow-examples/mnist/model:v20190111-v0.2-148-g313770f',
      learningRate: '0.01',
      modelDir: 'gs://kubeflow-ci_temp/mnist-jlewi',
      name: 'mnist-train',
      numPs: 0,
      numWorkers: 0,
      secret: '',
      trainSteps: 200,
    },
    "mnist-deploy-gcp": {
      defaultCpuImage: 'tensorflow/serving:1.11.1',
      defaultGpuImage: 'tensorflow/serving:1.11.1-gpu',
      deployHttpProxy: 'false',
      enablePrometheus: 'true',
      gcpCredentialSecretName: 'user-gcp-sa',
      httpProxyImage: '',
      injectIstio: 'false',
      modelBasePath: 'gs://kubeflow-examples-data/mnist',
      modelName: 'mnist',
      name: 'mnist-deploy-gcp',
      numGpus: '0',
      versionName: 'v1',
    },
    "mnist-deploy-aws": {
      defaultCpuImage: 'tensorflow/serving:1.11.1',
      defaultGpuImage: 'tensorflow/serving:1.11.1-gpu',
      deployHttpProxy: 'false',
      enablePrometheus: 'true',
      httpProxyImage: 'gcr.io/kubeflow-images-public/tf-model-server-http-proxy:v20180723',
      injectIstio: 'false',
      modelBasePath: 's3://kubeflow-examples-data/mnist',
      modelName: 'null',
      name: 'mnist-deploy-aws',
      numGpus: '0',
      s3AwsRegion: 'us-west-1',
      s3Enable: 'false',
      s3Endpoint: 's3.us-west-1.amazonaws.com',
      s3SecretAccesskeyidKeyName: 'AWS_ACCESS_KEY_ID',
      s3SecretName: 'null',
      s3SecretSecretaccesskeyKeyName: 'AWS_SECRET_ACCESS_KEY',
      s3UseHttps: 'true',
      s3VerifySsl: 'true',
      versionName: 'v1',
    },
    "mnist-service": {
      enablePrometheus: 'true',
      injectIstio: 'false',
      modelName: 'null',
      name: 'mnist-service',
      serviceType: 'ClusterIP',
      trafficRule: 'v1:100',
    },
  },
}