import "./bootstrap";
import { createApp } from "vue";
import ImageUploader from "./image-uploader/ImageUploader.vue";
import ImageGallery from "./image-uploader/ImageGallery.vue";
import { plugin as ZiggyVue } from "ziggy-vue";
// import dotenv from "dotenv";

// dotenv.config();

import Echo from "laravel-echo";
// window.Echo = new Echo({
//     broadcaster: "pusher",
//     key: process.env.MIX_PUSHER_APP_KEY,
//     cluster: process.env.MIX_PUSHER_APP_CLUSTER,
//     // Add any additional configuration options based on your setup
// });

// If you don't need the styles, do not connect

const app = createApp({});
app.use(ZiggyVue);
app.component("upload-image", ImageUploader);
app.component("image-gallery", ImageGallery);
app.mount("#app");
