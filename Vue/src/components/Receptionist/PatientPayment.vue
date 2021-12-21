<template>
<div>

  {{patientInfo.patient_id}}
  {{patientInfo.name}}
  {{patientInfo.age}}
 <table id="example" class="table table-striped text-center" style=" background-color: rgb(0, 225, 255);">
    <thead> 
            <th>Test</th>
    </thead>
<tbody>  
  <tr v-for="(list,i) in patient" :key="i">
    <td>{{list.test_name}}</td>
  </tr>
</tbody>
 </table>


<form @submit.prevent="updatePatientPayment">
 <table class="table">
  <tbody>
  </tbody>
    <tfoot>
        <tr>
            <td colspan="5" class="text-right">Total</td>
            <td  class="text-right">{{patientInfo.total}}</td>
        </tr>
         <tr>
            <td colspan="5" class="text-right">Advance Paid</td>
            <td  class="text-right">{{patientInfo.advance}}</td>
        </tr>
        <tr>
            <td colspan="5" class="text-right">Due</td>
            <td  class="text-right" >{{patientInfo.due}}</td>
        </tr>
        <tr>
            <td colspan="5" class="text-right">Payable</td>
            <input class="form-control text-right" type="number" v-model="form.pay"/>
        </tr>
        <tr>
            <td colspan="5" class="text-right">New Due</td>
            
            <td  class="text-right">{{patientInfo.due-form.pay}}</td>
        </tr>
    </tfoot>
</table>
 <b-button type="submit" variant="success">Submit</b-button>
</form>
</div>
</template>

<script>
export default {
    data(){
        return{
        id:this.$route.params.id,
        filter: "",
        perPage: 5,
        currentPage: 1,
        fields: [
      { key: 'patient_id', label: 'ID' },
      { key: 'name', label: 'Name'},
      { key: 'due', label: 'Due' },
      "Actions"
      ],
       patient:[],
       patientInfo:{},
       form:{
        pay:0,
        //due:0,
       },
       due:0
        }
    },

    computed: {
      rows() {
        return this.patients.length
      }
    },

    created() {
      //patients er test gula array tah nissi
        this.$http.get('http://127.0.0.1:8000/api/patientDetails/' + this.id)
         .then(response => {
             this.patient = response.data.patient
         })
      //patient er details
        this.$http.get('http://127.0.0.1:8000/api/patientInfo/'+this.id)
         .then(response => {
             this.patientInfo = response.data
         }) 
    },

    methods:{
        onFiltered(filteredItems) {
        this.totalRows = filteredItems.length
        this.currentPage = 1
      },

      getSingleData(){
        this.$http.get('http://127.0.0.1:8000/api/patientInfo/'+this.id)
         .then(response => {
             this.patientInfo = response.data
         })
      },

        updatePatientPayment() {
          this.$http.post('http://127.0.0.1:8000/api/updatePatientPayment/' + this.id,this.form)
                .then(()=>{
                  this.getSingleData(),
                  this.form.pay=0,
                    self.message = 'Data is entered';
                    })   
        },


    }
    
}
</script>

<style scoped>

</style>