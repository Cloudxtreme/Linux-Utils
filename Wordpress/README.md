## Functions Gitbox

http://www.gistboxapp.com/

## Wordmove

https://github.com/welaika/wordmove

##### install

```bash
$ sudo gem install wordmove
```

##### Use

- **Init**

```bash
$ wordmove init
```

- **Push all**

```bash
$ wordmove push --all
```

- **Push Theme**

```bash
$ wordmove push -t
```

--------------------------------------------------------------------------------

## Wp-Cli

http://wp-cli.org/#install

##### Pre:

```bash
    $ sudo apt-get install php7.0-cli
```

```bash
    $
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && sudo mv wp-cli.phar /usr/local/bin/wp

    wp plugin install --activate all-in-one-wp-migration  admin-color-schemes
```

## Permissions

```bash
  $
  sudo chown -R www-data:www-data FOLDER/
  sudo find FOLDER/ -type d -exec chmod 755 {} \;
  sudo find FOLDER/ -type f -exec chmod 644 {} \;
```

## Plugins

#### Esentials


```bash
    $
    wp plugin install --activate  \
    accesspress-social-icons \
    all-in-one-seo-pack \
    admin-color-schemes \
    admin-menu-editor \
    all-in-one-wp-migration \
    better-wp-security \
    broken-link-checker \
    custom-content-type-manager \
    custom-login \
    flexible-posts-widget \
    post-types-order \
    regenerate-thumbnails \
    wp-maintenance-mode
```

#### Basics

- [accesspress-social-icons](https://wordpress.org/plugins/accesspress-social-icons)
- [admin-color-schemes](https://wordpress.org/plugins/admin-color-schemes)
- [admin-menu-editor](https://wordpress.org/plugins/admin-menu-editor)
- [advanced-menu-widget](https://wordpress.org/plugins/advanced-menu-widget)
- [all-in-one-seo-pack](https://wordpress.org/plugins/all-in-one-seo-pack)
- [all-in-one-wp-migration](https://wordpress.org/plugins/all-in-one-wp-migration)
- [better-wp-security](https://wordpress.org/plugins/better-wp-security)
- [broken-link-checker](https://wordpress.org/plugins/broken-link-checker)
- [carousel-without-jetpack](https://wordpress.org/plugins/carousel-without-jetpack)
- [custom-content-type-manager](https://wordpress.org/plugins/custom-content-type-manager)
- [custom-login](https://wordpress.org/plugins/custom-login)
- [disable-comments](https://wordpress.org/plugins/disable-comments)
- [disable-wordpress-updates](https://wordpress.org/plugins/disable-wordpress-updates)
- [easy-social-icons](https://wordpress.org/plugins/easy-social-icons)
- [featured-video-plus](https://wordpress.org/plugins/featured-video-plus)
- [flexible-posts-widget](https://wordpress.org/plugins/flexible-posts-widget)
- [hc-custom-wp-admin-url](https://wordpress.org/plugins/hc-custom-wp-admin-url)
- [latest-tweets-widget](https://wordpress.org/plugins/latest-tweets-widget)
- [ml-slider](https://wordpress.org/plugins/ml-slider)
- [ms-custom-login](https://wordpress.org/plugins/ms-custom-login)
- [open-external-links-in-a-new-window](https://wordpress.org/plugins/open-external-links-in-a-new-window)
- [post-types-order](https://wordpress.org/plugins/post-types-order)
- [quick-admin-color-scheme-picker](https://wordpress.org/plugins/quick-admin-color-scheme-picker)
- [regenerate-thumbnails](https://wordpress.org/plugins/regenerate-thumbnails)
- [responsive-add-ons](https://wordpress.org/plugins/responsive-add-ons)
- [search-and-replace](https://wordpress.org/plugins/search-and-replace)
- [sem-external-links](https://wordpress.org/plugins/sem-external-links)
- [simple-basic-contact-form](https://wordpress.org/plugins/simple-basic-contact-form)
- [simple-history](https://wordpress.org/plugins/simple-history)
- [simple-responsive-slider](https://wordpress.org/plugins/simple-responsive-slider)
- [social-media-feather](https://wordpress.org/plugins/social-media-feather)
- [the-events-calendar](https://wordpress.org/plugins/the-events-calendar)
- [theme-check](https://wordpress.org/plugins/theme-check)
- [traffic-counter-widget](https://wordpress.org/plugins/traffic-counter-widget)
- [user-role-editor](https://wordpress.org/plugins/user-role-editor)
- [video-list-manager](https://wordpress.org/plugins/video-list-manager)
- [webmaster-user-role](https://wordpress.org/plugins/webmaster-user-role)
- [wp-attachments](https://wordpress.org/plugins/wp-attachments)
- [wp-db-backup](https://wordpress.org/plugins/wp-db-backup)
- [wp-maintenance-mode](https://wordpress.org/plugins/wp-maintenance-mode)
- [wp-media-library-categories](https://wordpress.org/plugins/wp-media-library-categories)
- [wp-optimize](https://wordpress.org/plugins/wp-optimize)
- [wp-security-audit-log](https://wordpress.org/plugins/wp-security-audit-log)
- [wpfront-user-role-editor](https://wordpress.org/plugins/wpfront-user-role-editor)
- [yop-poll](https://wordpress.org/plugins/yop-poll)
- [duplicator](https://wordpress.org/plugins/duplicator)
- [relative-url](https://wordpress.org/plugins/relative-url)

#### Development

- [debug-bar](https://wordpress.org/plugins/debug-bar/)



### Child Theme

```css
/*
 Theme Name:     Foxy Child Theme
 Theme URI:      http://www.elegantthemes.com/gallery/foxy/
 Description:    Foxy Child Theme
 Author:         Elegant Themes
 Author URI:     http://www.elegantthemes.com
 Template:       Foxy
 Version:        1.0.0
*/

@import url("../Foxy/style.css");

/* =Theme customization starts here
------------------------------------------------------- */
```


### The Loop

```php
<?php
global $post;
$args = array(
  'posts_per_page'    => 5,
  'category'=> 59
);
$myposts = get_posts( $args );
foreach( $myposts as $post ) : setup_postdata($post);
  the_permalink();
  the_title();
  the_post_thumbnail('full');
  the_title();
endforeach;

```


### The Loop Custom Type

```php
<?php
	$arg = array(
		'post_type' 			=> 'producto',
		'category' 				=> 'hamburguesa',
		'posts_per_page'  => -1
	);
	$loop = new WP_Query( $arg );
?>
<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>

	<h3><?php the_title(); ?></h3>

	<ul>
		<li><?php print_custom_field('product_desc'); ?></li>
		<li><?php print_custom_field('product_price'); ?></li>
	</ul>
	<img src="<?php print_custom_field('product_img:to_image_src'); ?>" /><br />

<?php endwhile; wp_reset_query();
```

### The Loop Custom Type FIELD

```php
<?php
    $arg = array(
        'post_type'       => 'main_page',
        'posts_per_page'  => -1
    );
    $loop = new WP_Query( $arg );
?>
<?php
    while ( $loop->have_posts() ) : $loop->the_post();
        $images = get_custom_field('img_slider_web');
        $i = 1;
        foreach ($images as $img) {
            ?>
            <div class="item<?php if ($i == 1) echo ' active'; ?>">
            <?php
                printf('<img src="%s"/>', $img);
            ?>
            </div>
            <?php
        $i++;
        }
    endwhile; wp_reset_query();
?>
```

### Custom Nav

```php
<?php
/*
 * place in function.php
 * custom menu example @ https://digwp.com/2011/11/html-formatting-custom-menus/
 *
 */

 function wp_custom_menu( $menu_id ) {
 	$menu_name = 'menu-home'; // specify custom menu slug
 	if (  wp_get_nav_menu_object( $menu_id ) ) {
 		$menu         = wp_get_nav_menu_object( $menu_id );
 		$menu_items   = wp_get_nav_menu_items($menu->term_id);

 		// $menu_list = "\t". '<nav>' ."\n";
 		// $menu_list .= "\t\t". '<ul>' ."\n";
 		foreach ((array) $menu_items as $key => $menu_item) {
 			$title         = $menu_item->title;
             $url           = $menu_item->url;
             $image_size    = $menu_item->image_size;
             $image_menu    = wp_get_attachment_image($menu_item->thumbnail_id, $image_size);

             $menu_list .= '<div class="col-lg-4 col-sm-6">' ."\n";
             $menu_list .= '<a class="hovereffect" href="'. $url .'">' ."\n";
             $menu_list .= $image_menu ."\n";
             $menu_list .= '<div class="overlay"><h2>' . $title . '</h2></div>' ."\n";
             $menu_list .= '</a>' ."\n";
             $menu_list .= '</div>' ."\n";

 		}
 		// $menu_list .= "\t\t". '</ul>' ."\n";
 		// $menu_list .= "\t". '</nav>' ."\n";
 	} else {
 		// $menu_list = '<!-- no list defined -->';
 	}
 	echo $menu_list;
 }

/*
 * Use: Menu number.
 */

 if (function_exists(wp_custom_menu(2))) wp_custom_menu(2);
 ?>

```
