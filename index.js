const axios = require("axios");
const qs = require("querystring");
const args = require("gar")(process.argv.slice(2));

axios.post(process.env.MASTODON_INSTANCE + "/api/v1/statuses", qs.stringify(args), {
  headers: {
    Authorization: "Bearer " + process.env.MASTODON_ACCESS_TOKEN
  }
});
