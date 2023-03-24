var pool = require('./bd');

async function getNovedades() {
        var query = 'select * from viajes order by id asc';
        var rows = await pool.query(query);
        return rows;
}

async function deleteNovedadById(id) {
        var query = 'delete from viajes where id = ?';
        var rows = await pool.query(query, [id]);
        return rows;
}

async function insertNovedad(obj) {
        try {
                var query = 'insert into viajes set ?';
                var rows = await pool.query(query, [obj]);
                return rows;
        } catch (error) {
                console.log(error);
                throw error;
        }
}

async function getNovedadById(id) {
        var query = 'select * from viajes where id=?';
        var rows = await pool.query(query, [id]);
        return rows[0];
}

async function modificarNovedadById(obj, id) {
        try {
                var query = 'update viajes set ? where id=?';
                var rows = await pool.query(query, [obj, id]);
                return rows;
        } catch (error) {
                throw error;
        }
}

module.exports = { getNovedades, deleteNovedadById, insertNovedad, getNovedadById, modificarNovedadById }