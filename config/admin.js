module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'f01ec252ba8d31eb4ad6193a887ef350'),
  },
});
