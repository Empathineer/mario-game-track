<main class="col-md" style="margin-bottom: 0px; margin-top: 0px;">

<a data-id="" id="mario-the-goal-update" style="top: 0px;"></a><h1><a data-id="" href="#mario-the-goal-update">Mario: The Goal Update</a></h1>

<a data-id="" id="objectives" style="top: 0px;"></a><h2><a data-id="" href="#objectives">Objectives</a></h2>



<ul class="fa-ul">
  <li data-marker="*"><span class="fa-li"><i class="fas fa-circle"></i></span>Add a pyramid of blocks to the generated level.</li>
  <li data-marker="*"><span class="fa-li"><i class="fas fa-circle"></i></span>Add a flag at the end of the level that either loads a new level or simply displays a victory message to the screen.</li>
</ul>


<a data-id="" id="its-game-time" style="top: 0px;"></a><h2><a data-id="" href="#its-game-time">It’s Game Time</a></h2>

<p>Your second assignment in this track will be a step more difficult than the last, but charmingly tied back into an earlier problem set in the course; this time, rather than constructing a pyramid using hash marks, you’ll be creating a pyramid of tiles in a procedurally generated level. Additionally, you’ll create the characteristic end-of-level flag that delineates one level from another, choosing to either end the level with a message or transition to a brand new one!</p>

<p>Your goal:</p>

<ol>
  <li>
    <p>Add a pyramid of blocks to the generated level. Taking into consideration the column-based generation we discussed in the track, find a way to generate a Mario-style pyramid like the below, placed directly atop the ground (ASCII flag to the right shown as well):</p>

    <div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>      #      ~
     ##      |
    ###      |
   ####      |
 ###############
</code></pre></div>    </div>

    <p>You may choose to alter the pyramid such that it is symmetrical, but avoid a pyramid going the opposite direction, for Mario therefore won’t be able to climb it! Also be careful to avoid starting the generation too close to the end of the level :)</p>
  </li>
  <li>
    <p>Add a flag at the end of the level that either loads a new level or simply displays a victory message to the screen. Also tied to generation, this time take the flag and flagpole sprites included in the distro’s sprite sheet and create a flagpole at the end of the level that, upon Mario’s collision, triggers either a victory message or a reloading of a brand new procedurally generated level.</p>
  </li>
</ol>

<a data-id="" id="system-requirements" style="top: 0px;"></a><h2><a data-id="" href="#how-to-submit">System Requirements</a></h2>

<ul class="fa-ul">
  <li data-marker="*"><span class="fa-li"><i class="fas fa-circle"></i></span><p><a href="https://love2d.org/">Download LÖVE</a></p></li>
  <li data-marker="*"><span class="fa-li"><i class="fas fa-circle"></i></span><p>For further information on how to actually run games, please visit the following page:</p><p><a href="https://love2d.org/wiki/Getting_Started">https://love2d.org/wiki/Getting_Started</a></p></li>
  <li data-marker="*"><span class="fa-li"><i class="fas fa-circle"></i></span><p>Additionally, if you’re new to the Lua programming language (what LÖVE expects you to write in order to work), check out the following online reference manual:</p></li>
  <p><a href="https://love2d.org/"><p><a href="https://www.lua.org/manual/5.3/">Lua Programming Manual</a></p>

</ul>


<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>submit50 cs50/problems/2020/x/tracks/games/mario
</code></pre></div></div>

<h2><a data-id="" href="#how-to-submit">How to Submit</a></h2>
<p>To submit your code with <code class="highlighter-rouge">submit50</code>, you may either: (1) upload your code to CS50 IDE and run <code class="highlighter-rouge">submit50</code> from inside of your IDE, or (2) install <code class="highlighter-rouge">submit50</code> on your own computer by running <code class="highlighter-rouge">pip3 install submit50</code> (assuming you have <a href="https://www.python.org/downloads/">Python 3</a> installed).</p>
<p>Execute the below, logging in with your GitHub username and password when prompted. For security, you’ll see asterisks (<code class="highlighter-rouge">*</code>) instead of the actual characters in your password.</p>
<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>submit50 cs50/problems/2020/x/tracks/games/pong
</code></pre></div></div>


 </main>
