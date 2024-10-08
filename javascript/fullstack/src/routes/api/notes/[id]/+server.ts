import { json } from '@sveltejs/kit';
import type { RequestHandler } from "./$types";
import { DatabaseClient } from '$lib/server/database';
import type { PageLoad } from '../../../$types';

export const POST: RequestHandler = async ({ params, request }) => {
    DatabaseClient.FinishNote(params.id)
    return json('');
}