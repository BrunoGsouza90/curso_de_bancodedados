import { MongoClient, Db } from "mongodb";
export default class dbConnection {
    protected cliente: MongoClient;
    protected database: Db;
    constructor();
    run(): Promise<void>;
    stop(): Promise<void>;
}
//# sourceMappingURL=dbconnection.d.ts.map