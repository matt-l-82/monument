<?php
/**
 * Avada Options.
 *
 * @author     ThemeFusion
 * @copyright  (c) Copyright by ThemeFusion
 * @link       https://theme-fusion.com
 * @package    Avada
 * @subpackage Core
 * @since      4.0.0
 */

// Do not allow directly accessing this file.
if ( ! defined( 'ABSPATH' ) ) {
	exit( 'Direct script access denied.' );
}

/**
 * Mobile settings
 *
 * @param array $sections An array of our sections.
 * @return array
 */
function avada_options_section_responsive( $sections ) {

	$settings = get_option( Avada::get_option_name(), [] );

	$sections['mobile'] = [
		'label'    => esc_html__( 'Responsive', 'Avada' ),
		'id'       => 'responsive',
		'priority' => 2,
		'icon'     => 'el-icon-resize-horizontal',
		'alt_icon' => 'fusiona-mobile',
		'fields'   => [
			'responsive'              => [
				'label'       => esc_html__( 'Responsive Design', 'Avada' ),
				'description' => esc_html__( 'Turn on to use the responsive design features. If set to off, the fixed layout is used.', 'Avada' ),
				'id'          => 'responsive',
				'default'     => '1',
				'type'        => 'radio-buttonset',
				'choices'     => [
					'1' => esc_html__( 'On', 'Avada' ),
					'0' => esc_html__( 'Off', 'Avada' ),
				],
			],
			'grid_main_break_point'   => [
				'label'       => esc_html__( 'Grid Responsive Breakpoint', 'Avada' ),
				'description' => esc_html__( 'Controls when grid layouts (blog/portfolio) start to break into smaller columns. Further breakpoints are auto calculated.', 'Avada' ),
				'id'          => 'grid_main_break_point',
				'default'     => '1000',
				'type'        => 'slider',
				'choices'     => [
					'min'  => '360',
					'max'  => '2000',
					'step' => '1',
					'edit' => 'yes',
				],
				'required'    => [
					[
						'setting'  => 'responsive',
						'operator' => '==',
						'value'    => '1',
					],
				],
				'output'      => [
					// runs fusionRecalcAllMediaQueries().
					[
						'element'           => 'helperElement',
						'property'          => 'bottom',
						'js_callback'       => [
							'fusionGlobalScriptSet',
							[
								'globalVar' => 'dummy',
								'id'        => 'dummy',
								'trigger'   => [ 'fusionRecalcAllMediaQueries' ],
							],
						],
						'sanitize_callback' => '__return_empty_string',
					],
				],
			],
			'side_header_break_point' => [
				'label'       => esc_html__( 'Header Responsive Breakpoint', 'Avada' ),
				'description' => esc_html__( 'Controls when the desktop header changes to the mobile header.', 'Avada' ),
				'id'          => 'side_header_break_point',
				'default'     => '800',
				'type'        => 'slider',
				'choices'     => [
					'min'  => '0',
					'max'  => '2000',
					'step' => '1',
					'edit' => 'yes',
				],
				'required'    => [
					[
						'setting'  => 'responsive',
						'operator' => '==',
						'value'    => '1',
					],
				],
				'output'      => [
					// runs fusionRecalcAllMediaQueries().
					[
						'element'           => 'helperElement',
						'property'          => 'bottom',
						'js_callback'       => [
							'fusionGlobalScriptSet',
							[
								'globalVar' => 'dummy',
								'id'        => 'dummy',
								'trigger'   => [ 'fusionRecalcAllMediaQueries' ],
							],
						],
						'sanitize_callback' => '__return_empty_string',
					],
				],
			],
			'content_break_point'     => [
				'label'       => esc_html__( 'Site Content Responsive Breakpoint', 'Avada' ),
				'description' => esc_html__( 'Controls when the site content area changes to the mobile layout. This includes all content below the header including the footer.', 'Avada' ),
				'id'          => 'content_break_point',
				'default'     => '800',
				'type'        => 'slider',
				'choices'     => [
					'min'  => '0',
					'max'  => '2000',
					'step' => '1',
					'edit' => 'yes',
				],
				'required'    => [
					[
						'setting'  => 'responsive',
						'operator' => '==',
						'value'    => '1',
					],
				],
				'output'      => [
					// runs fusionRecalcAllMediaQueries().
					[
						'element'           => 'helperElement',
						'property'          => 'bottom',
						'js_callback'       => [
							'fusionGlobalScriptSet',
							[
								'globalVar' => 'dummy',
								'id'        => 'dummy',
								'trigger'   => [ 'fusionRecalcAllMediaQueries' ],
							],
						],
						'sanitize_callback' => '__return_empty_string',
					],
				],
			],
			'sidebar_break_point'     => [
				'label'       => esc_html__( 'Sidebar Responsive Breakpoint', 'Avada' ),
				'description' => esc_html__( 'Controls when sidebars change to the mobile layout.', 'Avada' ),
				'id'          => 'sidebar_break_point',
				'default'     => ( isset( $settings['content_break_point'] ) && ! empty( $settings['content_break_point'] ) ) ? $settings['content_break_point'] : '800',
				'type'        => 'slider',
				'choices'     => [
					'min'  => '0',
					'max'  => '2000',
					'step' => '1',
					'edit' => 'yes',
				],
				'required'    => [
					[
						'setting'  => 'responsive',
						'operator' => '==',
						'value'    => '1',
					],
				],
				'output'      => [
					// runs fusionRecalcAllMediaQueries().
					[
						'element'           => 'helperElement',
						'property'          => 'bottom',
						'js_callback'       => [
							'fusionGlobalScriptSet',
							[
								'globalVar' => 'dummy',
								'id'        => 'dummy',
								'trigger'   => [ 'fusionRecalcAllMediaQueries' ],
							],
						],
						'sanitize_callback' => '__return_empty_string',
					],
				],
			],
			'mobile_zoom'             => [
				'label'       => esc_html__( 'Mobile Device Zoom', 'Avada' ),
				'description' => esc_html__( 'Turn on to enable pinch to zoom on mobile devices.', 'Avada' ),
				'id'          => 'mobile_zoom',
				'default'     => '1',
				'type'        => 'switch',
				'choices'     => [
					'on'  => esc_html__( 'On', 'Avada' ),
					'off' => esc_html__( 'Off', 'Avada' ),
				],
				'required'    => [
					[
						'setting'  => 'responsive',
						'operator' => '==',
						'value'    => '1',
					],
				],
				// No need to refresh the page.
				'transport'   => 'postMessage',
			],
			'typography_responsive'   => [
				'label'       => esc_html__( 'Responsive Heading Typography', 'Avada' ),
				'description' => esc_html__( 'Turn on for headings to change font size responsively.', 'Avada' ),
				'id'          => 'typography_responsive',
				'default'     => '0',
				'choices'     => [
					'on'  => esc_html__( 'On', 'Avada' ),
					'off' => esc_html__( 'Off', 'Avada' ),
				],
				'type'        => 'switch',
				'required'    => [
					[
						'setting'  => 'responsive',
						'operator' => '==',
						'value'    => '1',
					],
				],
				'output'      => [
					// This is for the fusionTypographyVars.typography_responsive var.
					[
						'element'           => 'helperElement',
						'property'          => 'bottom',
						'js_callback'       => [
							'fusionGlobalScriptSet',
							[
								'globalVar' => 'fusionTypographyVars',
								'id'        => 'typography_responsive',
								'trigger'   => [ 'fusionInitTypography' ],
							],
						],
						'sanitize_callback' => '__return_empty_string',
					],
				],
			],
			'typography_sensitivity'  => [
				'label'       => esc_html__( 'Responsive Typography Sensitivity', 'Avada' ),
				'description' => esc_html__( 'Values below 1 decrease rate of resizing, values above 1 increase rate of resizing.', 'Avada' ),
				'id'          => 'typography_sensitivity',
				'default'     => '0.6',
				'type'        => 'slider',
				'required'    => [
					[
						'setting'  => 'responsive',
						'operator' => '==',
						'value'    => '1',
					],
					[
						'setting'  => 'typography_responsive',
						'operator' => '!=',
						'value'    => 0,
					],
				],
				'choices'     => [
					'min'  => '0',
					'max'  => '2',
					'step' => '.01',
				],
				'output'      => [
					// This is for the fusionTypographyVars.typography_sensitivity var.
					[
						'element'           => 'helperElement',
						'property'          => 'bottom',
						'js_callback'       => [
							'fusionGlobalScriptSet',
							[
								'globalVar' => 'fusionTypographyVars',
								'id'        => 'typography_sensitivity',
								'trigger'   => [ 'fusionInitTypography' ],
							],
						],
						'sanitize_callback' => '__return_empty_string',
					],
				],
			],
			'typography_factor'       => [
				'label'       => esc_html__( 'Minimum Font Size Factor', 'Avada' ),
				'description' => esc_html__( 'Minimum font factor is used to determine the minimum distance between headings and body font by a multiplying value.', 'Avada' ),
				'id'          => 'typography_factor',
				'default'     => '1.5',
				'type'        => 'slider',
				'required'    => [
					[
						'setting'  => 'responsive',
						'operator' => '==',
						'value'    => '1',
					],
					[
						'setting'  => 'typography_responsive',
						'operator' => '!=',
						'value'    => 0,
					],
				],
				'choices'     => [
					'min'  => '0',
					'max'  => '4',
					'step' => '.01',
				],
				'output'      => [
					// This is for the fusionTypographyVars.typography_factor var.
					[
						'element'           => 'helperElement',
						'property'          => 'bottom',
						'js_callback'       => [
							'fusionGlobalScriptSet',
							[
								'globalVar' => 'fusionTypographyVars',
								'id'        => 'typography_factor',
								'trigger'   => [ 'fusionInitTypography' ],
							],
						],
						'sanitize_callback' => '__return_empty_string',
					],
				],
			],
		],
	];

	return $sections;

}