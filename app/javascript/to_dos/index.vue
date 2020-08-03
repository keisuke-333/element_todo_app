<template>
  <el-table :data="tableData" style="width:100%">
    <el-table-column prop="date" label="Date" with="180"></el-table-column>
    <el-table-column prop="name" label="Name" width="180"></el-table-column>
    <el-table-column prop="address" label="Address"></el-table-column>
  </el-table>
</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      toDos: [],
    };
  },
  created() {
    axios.get("/api/v1/to_dos").then((res) => {
      this.toDos = res.data;
    });
  },
};
</script>