import pg from 'pg'
import {DB_USER, DB_DATABASE, DB_HOST, DB_PASSWORD, DB_PORT} from '$env/static/private';
const { Client } = pg


export class DatabaseClient {
    private static client : pg.Client;
    private constructor(){}

    public static async initialize() {
        this.client = new Client({
            user: DB_USER,
            password: DB_PASSWORD,
            host: DB_HOST,
            port: Number(DB_PORT),
            database: DB_DATABASE,          
        })
        await this.client.connect();
    }

    public static getInstance(): pg.Client {
        if(!DatabaseClient.client){
            this.initialize();
        }
        return DatabaseClient.client;
    }

    public static async GetNotes(): Promise<pg.QueryResult> {
        const res = await this.getInstance().query('SELECT id,title,content,created_at FROM notes WHERE finished=false ORDER BY created_at');
        return res
    }

    public static async FinishNote(id: string) {
        await this.getInstance().query('UPDATE notes SET finished = true WHERE id=$1', [id])
    }
};