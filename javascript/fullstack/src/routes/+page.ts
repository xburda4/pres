import type { PageLoad } from './$types';

export const load: PageLoad = async ({ fetch }) => {
    const response = await fetch('/api/notes', {
        method: 'GET',
        headers: {
            'content-type': 'application/json',
            }
        })

    const bod = await response.json();
    
    return {
        notes: bod.rows
    }
}