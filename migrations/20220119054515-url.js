'use strict';

var dbm;
var type;
var seed;

/**
  * We receive the dbmigrate dependency from dbmigrate initially.
  * This enables us to not have to rely on NODE_PATH.
  */
exports.setup = function(options, seedLink) {
  dbm = options.dbmigrate;
  type = dbm.dataType;
  seed = seedLink;
};

exports.up = function(db) {
  return  db.createTable('urls', {
    id: {
      type: 'int',
      primaryKey: true,
      autoIncrement: true,
      notNull: true
    },
    code: {
      type: 'string',
      notNull: true
    },
    link: {
      type: 'string',
      notNull: true
    },
    createdAt: {
      type: 'datetime',
      notNull: false
    },
    updatedAt: {
      type: 'datetime',
      notNull: false
    },
    deletedAt: {
      type: 'datetime',
      notNull: false
    }
  });
};

exports.down = function(db) {
  return db.dropTable('urls');
};

exports._meta = {
  "version": 1
};
