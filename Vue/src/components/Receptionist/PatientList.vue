<template>
<div>
<b-row class="mb-3">
    <b-col md="3">
        <b-form-input v-model="filter" type="search" id="filterInput" placeholder="Search by Name"></b-form-input>
      </b-col>
</b-row>

    <b-row>
      <b-col md="8">
        <b-table
         ref="table"
          striped
          hover
          outlined
          id="my-table"
          :items="patients"
          :fields="fields"
          :current-page="currentPage"
          :per-page="perPage"
          :filter="filter"
          @filtered="onFiltered"
        >
        <template #cell(name)="data">
          <span >{{data.item.name}}</span>
        </template>
        <template #cell(patient_id)="data">
          <span>{{data.item.patient_id}}</span>
        </template>
        <template  #cell(actions)="data">
         <router-link  v-bind:to="'/PatientPayment/' + data.item.patient_id" class="btn btn-sm btn btn-warning" style="width: 120px;"> View</router-link>
        </template>
        </b-table>
 <div  class="text-center" v-if="patients.length < 1"><p> No Patients available</p></div>
        <b-pagination
          v-model="currentPage"
          :total-rows="rows"
          :per-page="perPage"
          first-text="⏮"
          prev-text="⏪"
          next-text="⏩"
          last-text="⏭"
          aria-controls="my-table"
        ></b-pagination>
      </b-col>
</b-row>
</div>    
</template>

<script>
export default {
    data(){
        return{
        filter: "",
        perPage: 5,
        currentPage: 1,
        fields: [
      { key: 'patient_id', label: 'ID' },
      { key: 'name', label: 'Name'},
      { key: 'due', label: 'Due' },
      "Actions"
      ],
        patients:[],
        }
    },

    computed: {
      rows() {
        return this.patients.length
      }
    },

    mounted() {
     this.getPatients();
    },
    methods:{

        onFiltered(filteredItems) {
        this.totalRows = filteredItems.length
        this.currentPage = 1
      },

        detailsPage(){
            this.$router.push({name:'ResultEntry'})
         },

        getPatients() {
        this.$http.get('http://127.0.0.1:8000/api/getPatient')
         .then(response => {
             this.patients = response.data.patient
         })
        },
    }
    
}
</script>

<style scoped>

</style>