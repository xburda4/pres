<script lang='ts'>
	import Note from '$lib/note.svelte';
    import type { PageData } from './$types';
    
	export let data: PageData;
</script>

<style>
    .container {
        align-items: center;
        display: flex;
        flex-direction: column;
    }
</style>

<div class="container">
    <h1>Your reminders</h1>
    {#each data.notes as note}
        <Note id={note.id} title={note.title} content={note.content}/>
    {/each}
</div>
