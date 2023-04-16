from lib.db import db
class AddBioColumnMigration(Migration):
  def migrate_sql():
    data = """
    """
    return data
  def rollback_sql():
    data = """
    """
    return data
  def migrate():
    db.query_commit(AddBioColumnMigration.migrate_sql(),{
    })
  def rollback():
    db.query_commit(AddBioColumnMigration.rollback_sql(),{
    })
    migration = AddBioColumnMigration