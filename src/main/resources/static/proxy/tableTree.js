const controllerPath = "/NewPermissionController";
const vm = new Vue({
    el: '#app',
    data: {
        // ------------------ 公共数据 ------------------
        tableDataUrl: controllerPath + "/list/",
        editUrl: controllerPath + "/edit/",
        tableData: [],
        tableHeight: 700,
        searchContent: '',
        pageSize: 10,//默认每页数据量
        currentPage: 1,//当前页码
        totalCount: 0,//默认数据总数

        // ---------------- 新增|编辑 表单数据 -----------------
        crudFormVisible: false,
        crudTitle: '',
        icons: [
            {
                label: "position",
                value: "el-icon-position"
            }, {
                label: "moonNight",
                value: "el-icon-moon-night"
            }, {
                label: "eleme",
                value: "el-icon-eleme"
            }, {
                label: "promotion",
                value: "el-icon-s-promotion"
            }, {
                label: "setting",
                value: "el-icon-setting"
            }, {
                label: "sunny",
                value: "el-icon-sunny"
            }, {
                label: "data",
                value: "el-icon-s-data"
            }, {
                label: "edit",
                value: "el-icon-edit"
            }, {
                label: "paperclip",
                value: "el-icon-paperclip"
            }],
        permissionList: [
            {
                value: 'zhinan',
                label: '指南',
                children: [{
                    value: 'shejiyuanze',
                    label: '设计原则',
                    children: [{
                        value: 'yizhi',
                        label: '一致'
                    }, {
                        value: 'fankui',
                        label: '反馈'
                    }, {
                        value: 'xiaolv',
                        label: '效率'
                    }, {
                        value: 'kekong',
                        label: '可控'
                    }]
                }, {
                    value: 'daohang',
                    label: '导航',
                    children: [{
                        value: 'cexiangdaohang',
                        label: '侧向导航'
                    }, {
                        value: 'dingbudaohang',
                        label: '顶部导航'
                    }]
                }]
            }, {
                value: 'zujian',
                label: '组件',
                children: [{
                    value: 'basic',
                    label: 'Basic',
                    children: [{
                        value: 'layout',
                        label: 'Layout 布局'
                    }, {
                        value: 'color',
                        label: 'Color 色彩'
                    }, {
                        value: 'typography',
                        label: 'Typography 字体'
                    }, {
                        value: 'icon',
                        label: 'Icon 图标'
                    }, {
                        value: 'button',
                        label: 'Button 按钮'
                    }]
                }, {
                    value: 'form',
                    label: 'Form',
                    children: [{
                        value: 'radio',
                        label: 'Radio 单选框'
                    }, {
                        value: 'checkbox',
                        label: 'Checkbox 多选框'
                    }, {
                        value: 'input',
                        label: 'Input 输入框'
                    }, {
                        value: 'input-number',
                        label: 'InputNumber 计数器'
                    }, {
                        value: 'select',
                        label: 'Select 选择器'
                    }, {
                        value: 'cascader',
                        label: 'Cascader 级联选择器'
                    }, {
                        value: 'switch',
                        label: 'Switch 开关'
                    }, {
                        value: 'slider',
                        label: 'Slider 滑块'
                    }, {
                        value: 'time-picker',
                        label: 'TimePicker 时间选择器'
                    }, {
                        value: 'date-picker',
                        label: 'DatePicker 日期选择器'
                    }, {
                        value: 'datetime-picker',
                        label: 'DateTimePicker 日期时间选择器'
                    }, {
                        value: 'upload',
                        label: 'Upload 上传'
                    }, {
                        value: 'rate',
                        label: 'Rate 评分'
                    }, {
                        value: 'form',
                        label: 'Form 表单'
                    }]
                }, {
                    value: 'data',
                    label: 'Data',
                    children: [{
                        value: 'table',
                        label: 'Table 表格'
                    }, {
                        value: 'tag',
                        label: 'Tag 标签'
                    }, {
                        value: 'progress',
                        label: 'Progress 进度条'
                    }, {
                        value: 'tree',
                        label: 'Tree 树形控件'
                    }, {
                        value: 'pagination',
                        label: 'Pagination 分页'
                    }, {
                        value: 'badge',
                        label: 'Badge 标记'
                    }]
                }, {
                    value: 'notice',
                    label: 'Notice',
                    children: [{
                        value: 'alert',
                        label: 'Alert 警告'
                    }, {
                        value: 'loading',
                        label: 'Loading 加载'
                    }, {
                        value: 'message',
                        label: 'Message 消息提示'
                    }, {
                        value: 'message-box',
                        label: 'MessageBox 弹框'
                    }, {
                        value: 'notification',
                        label: 'Notification 通知'
                    }]
                }, {
                    value: 'navigation',
                    label: 'Navigation',
                    children: [{
                        value: 'menu',
                        label: 'NavMenu 导航菜单'
                    }, {
                        value: 'tabs',
                        label: 'Tabs 标签页'
                    }, {
                        value: 'breadcrumb',
                        label: 'Breadcrumb 面包屑'
                    }, {
                        value: 'dropdown',
                        label: 'Dropdown 下拉菜单'
                    }, {
                        value: 'steps',
                        label: 'Steps 步骤条'
                    }]
                }, {
                    value: 'others',
                    label: 'Others',
                    children: [{
                        value: 'dialog',
                        label: 'Dialog 对话框'
                    }, {
                        value: 'tooltip',
                        label: 'Tooltip 文字提示'
                    }, {
                        value: 'popover',
                        label: 'Popover 弹出框'
                    }, {
                        value: 'card',
                        label: 'Card 卡片'
                    }, {
                        value: 'carousel',
                        label: 'Carousel 走马灯'
                    }, {
                        value: 'collapse',
                        label: 'Collapse 折叠面板'
                    }]
                }]
            }, {
                value: 'ziyuan',
                label: '资源',
                children: [{
                    value: 'axure',
                    label: 'Axure Components'
                }, {
                    value: 'sketch',
                    label: 'Sketch Templates'
                }, {
                    value: 'jiaohu',
                    label: '组件交互文档'
                }]
            }],
        permission: {
            id: '',
            name: '',
            type: 'CATALOG',
            key: '',
            icon: '',
            enable: true,
            url: '',
            sort: '',
        }
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
        onEnableChange(permission) {
            // this.switchPermission(row, row.enable);
        },

        // -------------------- common方法 --------------------

        // 新增一行
        add() {
            this.crudTitle = '新增';
            this.crudFormVisible = true;
        },
        // 删除一行
        deleteOne(row) {
            this.$message({
                message: '删除成功!',
                type: 'success'
            });
        },
        // 编辑一行
        edit(row) {
            for (let field in this.permission) {
                this.permission[field] = row[field];
            }
            this.crudTitle = '编辑';
            this.crudFormVisible = true;
        },
        onCrudFormSave() {
            if(this.permission.id===''){
                this.$message({
                    message: '新增成功!',
                    type: 'success'
                });
            }else{
                this.$message({
                    message: '编辑成功!',
                    type: 'success'
                });
            }
        },
        onCrudFormClose() {
            this.permission = {
                id: '',
                name: '',
                type: 'CATALOG',
                key: '',
                icon: '',
                enable: true,
                url: '',
                sort: '',
            }
        },
        iconChange: function (icon) {
            // el-select实际上是两层div包裹的input
            // 获取当前el-select标签第一层div
            const select = this.$refs['permissionIcon'];
            if (!select) {
                return;
            }
            const dom = select.$el;
            // 创建需要添加到其中的标签 并填充内容
            const svgDom = document.createElement('span');
            svgDom.setAttribute('class', 'el-input__prefix');
            svgDom.innerHTML = '<span class="el-input__prefix-inner"><i class="el-input__icon ' + icon + ' is-reverse"></i></span>';
            // 将创建的标签添加到父节点(第二层div)
            const parent = dom.children[0];
            const child = parent.children;
            if (child.length > 2) {
                child[2].remove();
            }
            parent.appendChild(svgDom);
        },
        getTableHeaderClass: function(){
            return "table-header";
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
            axios.post(this.tableDataUrl, data)
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