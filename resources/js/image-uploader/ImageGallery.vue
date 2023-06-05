<template>
	<div>
		<div class="gallery">
			<div :key="image.id" class="image-item" v-for="image in images">
				<img :src="image.url" alt="Image" />
			</div>
		</div>
		<div class="pagination">
			<button @click="changePage(currentPage - 1)" v-if="currentPage > 1">Previous</button>
			<button :class="{ active: currentPage === page }" :key="page" @click="changePage(page)" v-for="page in totalPages">{{ page }}</button>
			<button @click="changePage(currentPage + 1)" v-if="currentPage < totalPages">Next</button>
		</div>
	</div>
</template>
<script>
import { defineComponent } from "vue";
import axios from "axios";
import Swal from "sweetalert2";

export default defineComponent({
	name: "ImageGallery",
	data() {
		return {
			images: [],
			currentPage: 1,
			totalPages: 0,
		};
	},
	mounted() {
		this.fetchImages();
	},
	methods: {
		fetchImages() {
			axios
				.get("/user/image-gallery", {
					params: {
						page: this.currentPage,
					},
				})
				.then((response) => {
					this.images = response.data.data;
					this.currentPage = response.data.current_page;
					this.totalPages = response.data.last_page;
				})
				.catch((error) => {
					console.error(error);
				});
		},
		changePage(page) {
			this.currentPage = page;
			this.fetchImages();
		},
	},
});
</script>

<style scoped>
.gallery {
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
	grid-gap: 10px;
}

.image-item {
	width: 100%;
	height: 0;
	padding-bottom: 100%;
	position: relative;
	overflow: hidden;
}

.image-item img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	object-fit: cover;
}
.pagination {
	display: flex;
	justify-content: center;
	margin-top: 20px;
	margin-bottom: 20px;
}

.pagination button {
	background-color: #eee;
	border: none;
	color: #333;
	padding: 8px 12px;
	margin-right: 5px;
	cursor: pointer;
}

.pagination button:hover {
	background-color: #ccc;
}

.pagination button.active {
	background-color: #333;
	color: #fff;
}
</style>

