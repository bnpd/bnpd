<script lang="ts">
    import './styles.css';
    import './ca.css';
    import ProjectCard from '$lib/ProjectCard.svelte';
    import { base } from '$app/paths'
</script>

<nav class="blue padding">
    <div class="content">
        <a href={base} class="bold brand tight no-underline">bnpd</a>
        <div class="float-right">
            <a href="https://www.linkedin.com/in/bnpd/" class="tight padding no-underline">LinkedIn</a>
        </div>
    </div>
</nav>

<section class="blue full-width padding">
    <div class="content">
        <div class="text-center">
            <h1 class="big">Hi, I'm Benjamin Paddags</h1>
            <h2>Some of my projects</h2>
        </div>
    </div>
</section>

<section class="padding trim">
    <div class="content text-justify">
        <div class="two columns desktop">
            <ProjectCard
                title="LanGam"
                description="I created a language learning game aspiring to refresh the concept 'choose your own adventure' books for the 21st century. The learner impacts the plot by their conversations with the (AI powered) game characters."
                demoUrl="https://langam.app/?utm_source=github&utm_medium=embedded"
                demoVideo="langam_demo.mp4"
                link="https://langam.app?utm_source=github"
            >
                <span slot="footer">Tech stack: Svelte, Pocketbase BaaS extended with JS, OpenAI API, Umami analytics, deployed on DigitalOcean and Render.com.</span>
            </ProjectCard>
            <ProjectCard
                title="Langki"
                description="Langki facilitates the creation of digital flashcards for the Anki spaced repetition system by fetching dictionary information from Wiktionary and keeping track of the user's vocabulary, recommending which words to learn next. I use AI to form sentences from the user's vocabulary for personalized listening practice."
                repo="https://github.com/bnpd/langki-adder"
                demoVideo="langki_demo.mp4"
            >
                <span slot="footer">Tech Stack: Java, ContentProvider Android API, OpenAI API, Gradle.</span>
                            <!--<a target="_blank" href="upload latest version with NOT voice mode as start page" class="blue button no-underline">Try it*</a>-->
                            <!--<em class="tiny">* Non-beautified prototype. Some features unavailable without Anki installed on the demo device.</em>-->
            </ProjectCard>
            <ProjectCard
                title="TravelOrger"
                description="TravelOrger is a browser extension that helps users organize their multi-stop trips by saving flights and trains to their Google calendar. It can calculate the cheapest and most convenient routes to see multiple cities."
            >
                            <!--<a target="_blank" href="MAKE PUBLIC" class="blue button no-underline">Explore Code</a>-->
            </ProjectCard>
        </div>
        <!--<div class="text-center padding">
            <a class="big blue button no-underline" href="#">View More Projects</a>
        </div>-->
    </div>
</section>