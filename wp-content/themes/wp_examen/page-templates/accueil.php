<?php
/*
Template Name: Accueil
*/
get_header(); ?>

<?php get_template_part( 'template-parts/featured-image' ); ?>

<div class="main-wrap full-width" role="main">

<?php do_action( 'foundationpress_before_content' ); ?>
<?php while ( have_posts() ) : the_post(); ?>
	<article <?php post_class('main-content') ?> id="post-<?php the_ID(); ?>">

    <div class="row">

			<img class="ialu large-6 medium-12" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/accueil-ialu.png" alt="Image à la une" />

		<header class="large-6 medium-12 columns">
			<h1 class="entry-title"><?php the_title(); ?></h1>
      <p>Structure Intérieures est une société de mobilier et d’aménagement créée par Olivier HESS.
Nous concevons et construisons du mobilier cotemporain: Meubles, petit mobilier et aménagement sur mesure.
Nous concevons des pièces à l’unité ou à très petite série, à la main et sur mesure.
Chaque projet est unique et est créé en fonction du client.</p>
		</header>

    </div>

    <div class="row partie-reals">
      <img class="large-3 medium-3 small-12 columns" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/real-1.png" alt="Réalisation" />
      <img class="real-2 large-3 medium-3 small-12 columns" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/real-2.png" alt="Réalisation" />
      <img class="real-3 large-3 medium-3 small-12 columns" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/real-3.png" alt="Réalisation" />
      <div class="large-3 medium-6 columns">
        <h2>RÉALISATIONS</h2>
        <p>Nous réalisons pour vous une multitudes de meubles et de petits mobiliers contemporain. Nous réalisons également des aménagements sur mesure, le tout à l’unité ou en très petite quantité afin de garantir une certaine exclusivité dans le produit que vous commandez chez nous.</p>
      </div>
    </div>

		<div class="row garanties-qualite">
			<div class="large-12 columns">
				<h2>NOS GARANTIES QUALITÉS</h2>
			</div>

			<div class="large-4 medium-4  small-4 columns text-center">
					<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/garantie-1.png" alt="Nos garanties qualité" />
					<p>FAIT MAINS</p>
			</div>

			<div class="large-4 medium-4  small-4 columns text-center">
					<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/garantie-2.png" alt="Nos garanties qualité" />
					<p>MADE IN FRANCE</p>
			</div>

			<div class="large-4 medium-4  small-4 columns text-center">
					<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/garantie-3.png" alt="Nos garanties qualité" />
					<p>SUR MESURE</p>
			</div>
		</div>


		<div class="row conteneur-articles-recents">
	      <?php
	        $args = array( 'numberposts' => 4, 'post_status'=>"publish",'post_type'=>"post",'orderby'=>"post_date");
	        $postslist = get_posts( $args );
	        echo '<ul id="latest_posts">';
	         foreach ($postslist as $post) :  setup_postdata($post); ?>
	         <div class="row">
	           <div class=" the-thumbnail large-6 medium-6 small-12 columns">
	             <?php the_post_thumbnail(); ?>
	           </div>
	           <div class="large-6 medium-6 small-12 columns">
	             <h2><a href="<?php the_permalink(); ?>" title="<?php the_title();?>"> <?php the_title(); ?></a></h2><br>
	            <div class="extrait-article">
								<?php echo custom_field_excerpt(); ?>
							</div>
	           </div>
	         </div>
	        <?php endforeach; ?>
	 </ul>
	    </div>

		<?php do_action( 'foundationpress_page_before_entry_content' ); ?>
		<div class="entry-content">
			<?php the_content(); ?>
		</div>
		<footer>
			<?php
				wp_link_pages(
					array(
						'before' => '<nav id="page-nav"><p>' . __( 'Pages:', 'foundationpress' ),
						'after'  => '</p></nav>',
					)
				);
			?>
			<p><?php the_tags(); ?></p>
		</footer>
		<?php do_action( 'foundationpress_page_before_comments' ); ?>
		<?php comments_template(); ?>
		<?php do_action( 'foundationpress_page_after_comments' ); ?>
	</article>
<?php endwhile;?>

<?php do_action( 'foundationpress_after_content' ); ?>

</div>

<?php get_footer();
