export default {
  config: {
    locales: ['zh-Hans'],
    translations: {
      'zh-Hans': {
        'Auth.form.email.label': '1471299010@qq.com',
        Users: '1471299010@qq.com',
        City: 'Chinese (Simplified) (zh-Hans)',
        // 这里是刚刚在设置中新建的国际化语言版本的ID
        Id: '2',
      },
    },
  },
  bootstrap(app) {
    console.log(app);
  },
};
