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
