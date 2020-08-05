<template>
  <el-form :model="toDo">
    <el-form-item label>
      <el-input v-model="toDo.title" placeholder="タイトルを入力" name="to_do[title]"></el-input>
    </el-form-item>
    <el-form-item label>
      <el-date-picker
        type="datetime"
        format="yyyy/MM/dd HH:mm"
        value-format="yyyy/MM/dd HH:mm"
        placeholder="期限を選択"
        v-model="toDo.expiredAt"
        name="to_do[expired_at]"
      ></el-date-picker>
    </el-form-item>
    <el-form-item>
      <el-button type="primary">登録</el-button>
      <el-button>キャンセル</el-button>
    </el-form-item>
  </el-form>
</template>

<script>
export default {
  data() {
    return {
      toDo: {
        title: "",
        expiredAt: "",
        finished: false,
      },
    };
  },
};
</script>