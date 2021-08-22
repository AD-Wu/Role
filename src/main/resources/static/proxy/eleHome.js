const vm = new Vue({
    el: '#app',
    data: {
        tableData: [],
        tableHeight: 700,
        searchContent: '',
        pageSize: 10,//默认每页数据量
        currentPage: 1,//当前页码
        totalCount: 0 //默认数据总数
    },
    created() {
        Vue.nextTick(() => {
            //载入表格数据
            this.loadData(this.currentPage, this.pageSize);
            //初始化websocket
            // vm.initWS();
        });
    },
    mounted() {
        this.$nextTick(() => {
            this.tableHeight = window.innerHeight - 170;
        })
    },
    methods: {
        // 编辑一行
        edit(index, rows) {
            console.log("edit" + index);
            console.log("edit" + rows);
        },
        // 删除一行
        deleteOne(index, rows) {
            rows.splice(index, 1);
        },

        // 搜索框搜索数据
        search: function () {
            if (this.searchContent === '') {
                return this.tableData;
            } else {
                return this.tableData.filter(data => {
                    // filter()对象遍历,true 返回对象参数值,如果多条数据,自动使用数组拼接
                    for (let k in data) {
                        let v = data[k] + '';
                        if (v.toLowerCase().includes(this.searchContent.toLowerCase())) {
                            return data;
                        }
                    }
                })
            }
        },
        // 每页显示数据量变更
        onSizeChange: function (val) {
            this.pageSize = val;
            this.loadData(this.currentPage, this.pageSize);
        },
        // 页码变更
        onCurrentChange: function (val) {
            this.currentPage = val;
            this.loadData(this.currentPage, this.pageSize);
        },

        //从后台获取数据
        loadData: function (page, pageSize) {
            let data = {
                page: page,
                pageSize: pageSize
            };
            axios.post('/ProxyController/getData', data)
                .then(function (response) {
                    let result = response.data;
                    vm.tableData = result.data;
                    vm.totalCount = result.total;
                    vm.currentPage = result.page;
                    vm.pageSize = result.pageSize;
                }).catch(function (error) {
                    console.log(error);
                }
            );
        }
    }

})