import { json } from "@sveltejs/kit";
import type { RequestHandler } from "./$types";
import { DatabaseClient } from "$lib/server/database";

export const GET: RequestHandler = async ({ request }) => {
    const rows = await DatabaseClient.GetNotes()
    return json(rows);
}