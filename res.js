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
// nested response 2
exports.oknested2 = function (values, res){
    const result = values.reduce((akumulasikan, item)=>{
        if (akumulasikan[item.name]){
            const group = akumulasikan[item.name];
            if(Array.isArray(group.salary) && Array.isArray(group.from_date) && Array.isArray(group.to_date)){
                group.salary.push(item.salary);
                group.from_date.push(item.from_date);
                group.to_date.push(item.to_date);
            }
            else {
                group.salary = [group.salary, item.salary];
                group.from_date = [group.from_date, item.from_date];
                group.to_date = [group.to_date, item.to_date];
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