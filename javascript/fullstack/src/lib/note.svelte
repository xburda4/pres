<script lang='ts'>
    import { invalidateAll } from "$app/navigation";

    export let id;
    export let title;
    export let content;

    const finishTask = async () => {
        await fetch(`/api/notes/${id}`, {
            method: 'POST',
        })
        invalidateAll()
    }
</script>

<style>
    .container {
        background-color: skyblue;
        margin: 10px;
        width: 20%;
        min-width: 250px;
    }

    #with-checkbox {
        display: flex;
        flex-direction: row;
    }

    input {
        max-width: 25px;
    }
</style>

<div class="container">
    <div id="with-checkbox">
        <div style="flex:4;">
            <h1>
                {title}
            </h1>
        
            <p>
                {content}
            </p>
        </div>    
        <input style="flex:2; margin:20px" type="checkbox" on:click={finishTask}/>
    </div>
</div>