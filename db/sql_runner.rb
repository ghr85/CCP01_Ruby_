require( 'pg' )

class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({ dbname:'rex', host:'localhost'}) #connect to DB consider many users
      db.prepare("query", sql)
      result = db.exec_prepared("query", values) #guards against SQL injection
    ensure #ensures this is always closed, even if something goes wrong
      db.close() if db != nil
    end
    return result
  end

end
