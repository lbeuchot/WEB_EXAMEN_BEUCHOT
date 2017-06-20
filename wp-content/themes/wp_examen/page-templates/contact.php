<?php
/*
Template Name: Contact
*/

get_header(); ?>

 <div class="main-wrap" role="main">

	<article>

    <div class="row page-contact">

      <div class="large-12 columns">
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2639.639404192021!2d7.7016197156645125!3d48.57845487926115!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4796b62b77e465c5%3A0xbf0b373a7882ef5c!2s5+Rue+C%C3%A9sar+Julien%2C+67200+Strasbourg!5e0!3m2!1sfr!2sfr!4v1497963629560" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
      </div>

        <div class="row encart-bas">

          <div class="texte-contact large-6 medium-12 columns">
            <h2>Une commande ? Une demande ? <br>Contactez-nous !</h2>
            <p>5 rue du César Julien 67200 STRASBOURG<br>
            06 74 86 02 59<br>
            structures.interieures@gmail.com</p>
          </div>

          <div class="large-6 medium-12 columns">

            <form class="formulaire">
              <div class="large-6 medium-12 columns">
                <input class="large-3 medium-12 columns" type="text" placeholder="Nom">
              </div>
              <div class="large-6 medium-12 columns">
                <input class="large-3 medium-12 columns" type="text" placeholder="Prénom">
              </div>
              <div class="large-12 columns">
                <input type="email" placeholder="E-mail">
              </div>
              <div class="large-12 columns">
                <textarea name="message" id="" rows="12" placeholder="Écrivez votre message ici"></textarea>
                <div class="bouton-contact">
                  <a href="#" class="button">ENVOYER</a>
                </div>
              </div>
            </form>

          </div>

        </div>

    </div>

	</article>

</div>

<?php get_footer();
