<template>
<div>
    <a href="/PatientLogin" @click="handleClick"> Logout </a>

 <table id="example" class="table table-striped text-center" style=" background-color: rgb(0, 225, 255);">
    <thead> 
            <th>Patient ID</th>
            <th>Test</th>
            <th>Result</th>

    </thead>
<tbody>  
  <tr v-for="list in result" :key="list">
    <td>{{list.patient_id}}</td>
    <td>{{list.name}}</td>
    <td>{{list.result}}</td>
  </tr>
</tbody>
</table>
 <div  class="text-center" v-if="result.length < 1"><p> Please pay full payment to view the report online.</p></div>
</div>
</template>

<script>
export default {
    data(){
        return{
            result:[],
        }
    },   
           async created() {
            const token = localStorage.getItem('token');
            const baseURI = 'http://127.0.0.1:8000/api/reportResult/' + token;
            const response = await this.$http.get(baseURI, {
                //session_id: this.session
            });
            this.result = response.data.result;
            console.log(response.data);
        },

     methods: {


        // getResult() {
        // const token = localStorage.getItem('token');
        // this.$http.get('http://127.0.0.1:8000/api/reportResult/' + token)
        //  .then(response => {
        //      this.result = response.data.result
        //  })
        // },
         
        handleClick() {
            localStorage.removeItem('token');
            localStorage.removeItem('patient_id');
            //this.$router.push({ name: 'Login' });
        },
     }
    
}
</script>

<style>

</style>