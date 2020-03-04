<template>
  <div v-if="isDrizzleInitialized" id="app">

    <div class="section">
      <h2>Show the Current Account</h2>
      <drizzle-account units="Ether" :precision="4" />
    </div>

    <!-- <div class="section">
      <h2>Tutorial Token</h2>
      <TutorialToken />
    </div> -->

    <div class="section">
      <h2>Simple Storage</h2>
      <SimpleStorage />
    </div>

    <!-- <div class="section">
      <h2>Complex Storage</h2>
      <ComplexStorage />
    </div> -->
  </div>

  <div v-else>Loading...</div>
</template>

<script>
import TutorialToken from './TutorialToken'
import SimpleStorage from './SimpleStorage'
import ComplexStorage from './ComplexStorage'
import { mapGetters } from 'vuex'

export default {
  name: 'app',
  components: {
    ComplexStorage,
    TutorialToken,
    SimpleStorage
  },

  computed: mapGetters('drizzle', ['isDrizzleInitialized'])
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
