const cds = require('@sap/cds');

module.exports = async function (entity, id, status,message) {
    const query_update_status = UPDATE(entity).set({ status : `${status}`, message : `${message}` }).where`ID = ${id}`;
    await cds.run(query_update_status);
}
