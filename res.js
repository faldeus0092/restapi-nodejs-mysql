'use strict'; // agar lebih ketat

// success response
exports.ok = function(values, res){
    var data = {
        'status' : 200,
        'message' : 'Successful operation',
        'values' : values
    };
    
    res.json(data);
    res.end();
}

exports.no = function(values, res){
    var data = {
        'status' : 400,
        'message' : 'Invalid identifier supplied',
        'values' : values
    };

    res.json(data);
    res.end();
}

// nested response
exports.oknested = function (values, res){
    const result = values.reduce((akumulasikan, item)=>{
        if (akumulasikan[item.name]){
            const group = akumulasikan[item.name];
            if(Array.isArray(group.dept_name)){
                group.dept_name.push(item.dept_name)
            }
            else {
                group.dept_name = [group.dept_name, item.dept_name];
            }
        }else {
            akumulasikan[item.name] = item
        }
        return akumulasikan;
    }, {})

    var data = {
        'status' : 200,
        'values' : result
    };

    res.json(data);
    res.end();
}