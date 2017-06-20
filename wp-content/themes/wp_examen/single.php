<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

get_header(); ?>

<div class="image-a-la-une">
<?php get_template_part( 'template-parts/featured-image' ); ?>
</div>

<div class="main-wrap" role="main">

<?php do_action( 'foundationpress_before_content' ); ?>
<?php while ( have_posts() ) : the_post(); ?>
	<article <?php post_class('fullwidth') ?> id="post-<?php the_ID(); ?>">

		<div class="row background-commande">

			<div class="large-6 medium-6 small-12 columns">
				<h1 class="entry-title"><?php the_title(); ?></h1>
			</div>

			<div class="large-6 medium-6 small-12 columns button-commander">
				<a href="#" class="button">COMMANDER</a>
			</div>

		</div>


		<div class="row materiaux">
			<h2><?php the_field('titre_materiel'); ?></h2>

			<div class="large-4 medium-4 small-4 columns text-center">
				<img src="<?php the_field('materiaux'); ?>" alt="Materiaux" />
				<p><?php the_field('nom_du_materiel'); ?></p>
			</div>

			<div class="large-4 medium-4 small-4 columns text-center">
				<img src="<?php the_field('materiaux_deux'); ?>" alt="Materiaux" />
				<p><?php the_field('nom_du_materiel_deux'); ?></p>
			</div>

			<div class="large-4 medium-4 small-4 columns text-center">
				<img src="<?php the_field('materiaux_trois'); ?>" alt="Materiaux" />
				<p><?php the_field('nom_du_materiel_trois'); ?></p>
			</div>
		</div>

		<div class="row">
			<div class="champs_un">
				<img class="large-6 medium-4 small-12 columns" src="<?php the_field('image_une'); ?>" alt="Materiaux" />
				<p class="large-4 large-offset-2 medium-8 small-12 columns"><?php the_field('texte_un'); ?></p>
			</div>
		</div>

		<div class="row">
			<div class="champs_deux">
				<p class="large-6 medium-8 small-12 columns"><?php the_field('texte_deux'); ?></p>
				<img class="large-4 large-offset-2 medium-4 small-12 columns" src="<?php the_field('image_deux'); ?>" alt="Materiaux" />
			</div>
		</div>

		<div class="row">
			<div class="champs_trois">
				<img class="large-12 columns" src="<?php the_field('image_full'); ?>" alt="Materiaux" />
				<p class="large-12 columns text-center"><?php the_field('texte_full'); ?></p>
			</div>
		</div>

		<div class="row">
			<div class="champs_quatre">
				<img class="large-6 medium-4 small-12 columns" src="<?php the_field('image_trois'); ?>" alt="Materiaux" />
				<p class="large-4 large-offset-2 medium-8 small-12 columns"><?php the_field('texte_trois'); ?></p>
			</div>
		</div>

		<?php do_action( 'foundationpress_post_before_entry_content' ); ?>
		<div class="">
			<?php the_content(); ?>

</div>

	</article>
<?php endwhile;?>

</div>
<?php get_footer();
