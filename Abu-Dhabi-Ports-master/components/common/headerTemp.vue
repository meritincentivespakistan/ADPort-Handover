  <template>
      <div class="sub-links-container">
        <ul>
          <li class="link-item">
            <a href="/nomination-start">Nomination</a>
          </li>
          <li v-if="false" class="link-item">
            <a href="#">Rising Stars</a>
          </li>
          <li v-if="false" class="link-item">
            <a href="#">Sales Incentives</a>
          </li>
          <li v-if="false" class="link-item">
            <a href="#">Wall Of Heros</a>
          </li>
          
          <li v-if="false" class="link-item">
            <a href="#">Send an eCard</a>
          </li>
          <li class="link-item">
            <a href="/rewards">Rewards</a>
          </li>
           <li class="link-item">
            <a href="/wall-of-heros">Wall of Heroes</a>
          </li>
           <li class="link-item">
            <a href="/badges">Badges</a>
          </li>
          <li v-if="false" class="link-item">
            <a href="#">About Us</a>
          </li>
        </ul>
      </div>
    </template>

<script>
export default {
  
}
</script>
<style>
.sub-links-container {
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #fff;
  padding: 15px;
}

.link-item {
  display: inline-block;
  margin: 20px 15px;
}
.link-item a {
  color: #0f2a3b;
  text-decoration: none;
  font-size: 15px;
}
</style>
