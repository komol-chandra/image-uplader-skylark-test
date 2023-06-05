<template>
	<div class="card mb-4">
		<!-- Account -->
		<div class="card-body">
			<form @submit.prevent="submitForm">
				<div class="row mt-2 mb-2">
					<div class="mb-3 col-md-4">
						<label class="form-label" for="image">
							Image Url
							<span class="text-danger">*</span>
						</label>
						<input autofocus class="form-control" id="image" name="image" placeholder="Enter image URL" type="text" v-model="imageUrl" />
					</div>
					<div class="mb-3 col-md-4 mt-4">
						<button :class="{ 'loaded': isImageLoaded }" @click="previewImage" class="btn btn-outline-primary">Preview</button>
					</div>
				</div>
				<div class="row mb-2 mt-2" v-if="imageUrl">
					<div class="mb-3 col-md-8">
						<!-- Image preview -->
						<div class="image-preview" v-if="imageUrl">
							<img :src="imageUrl" alt="Preview Image" />
							<button @load="handleImageLoad" class="btn btn-outline-success ms-4 mt-4" type="submit">Download</button>
						</div>
					</div>
					<!-- Cropper component -->
				</div>
			</form>
		</div>
	</div>
</template>
<script>
import { defineComponent } from "vue";
import axios from "axios";
import Swal from "sweetalert2";

export default defineComponent({
	name: "ImageUploader",
	data() {
		return {
			imageUrl: "",
			isPreviewVisible: false,
			isImageLoaded: false,
		};
	},
	mounted() {
		window.Echo.channel("image-processing").listen(
			"ImageProcessed",
			(event) => {
				Swal.fire({
					title: "OK",
					text: "This image is successfully Inserted!",
					icon: "success",
				});
				// Handle the WebSocket event
				console.log("Image processing completed:", event.imageUrl);
			}
		);
	},
	methods: {
		showAlert(title, body, type) {
			Swal.fire(title, body, title);
		},
		previewImage() {
			this.isPreviewVisible = true;
		},
		downloadImage() {
			// Download the image
		},
		handleImageLoad() {
			this.isImageLoaded = true;
		},
		submitForm() {
			const imageUrl = this.imageUrl;
			// Make an HTTP POST request to your Laravel API endpoint
			axios
				.post("/user/image", { imageUrl })
				.then((response) => {
					this.imageUrl = "";
					(this.isPreviewVisible = false),
						(this.isImageLoaded = false),
						console.log(response.data);
					Swal.fire({
						title: "OK",
						text: "This image is successfully Inserted!",
						icon: "success",
					});
					// Handle the response from the server
					console.log("Image upload successful");
				})
				.catch((error) => {
					Swal.fire({
						title: "Error!",
						text: error,
						icon: "warning",
					});
					// Handle any errors that occur during the request
					console.error("Image upload failed:", error);
				});
		},
	},
});
</script>
<style scoped>
.image-preview {
	margin-top: 10px;
}

.image-preview img {
	max-width: 100%;
	height: auto;
}
</style>

