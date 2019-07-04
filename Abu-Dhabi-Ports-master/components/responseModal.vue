<template>
    <v-dialog v-model="showModal" persistent max-width="600">
        <v-card>
            <v-card-text>
                <h5 class="text-center">
                    {{ message }}
                </h5>
            </v-card-text>
            <v-card-actions class="p-0">
                <v-btn block color="gray" @click="closeModal">Close</v-btn>
            </v-card-actions>
        </v-card>
    </v-dialog>
</template>
<script>
export default {
    props: ['showModal', 'message'],
    methods:{
        closeModal(){
            this.showModal = false;
            this.$emit('closeModal')
        }
    }
}
</script>
