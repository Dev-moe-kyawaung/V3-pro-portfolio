#!/usr/bin/env bash
set -e

ROOT_DIR="$(pwd)"

echo ">> Checking project root..."
if [ ! -d "$ROOT_DIR/lib" ]; then
  echo "Run this script from the root of your Flutter project."
  exit 1
fi

echo ">> Creating directories..."
mkdir -p lib/app/{di,router,theme}
mkdir -p lib/core/{constants,helpers,services,utils,widgets}
mkdir -p lib/data/{models,repositories,state}
mkdir -p lib/data/sources/{local,remote}
mkdir -p lib/features/{shell,hero,about,skills,services,projects,apps,contact}/presentation/{pages,widgets}
mkdir -p assets/images
mkdir -p assets/data

echo ">> Creating asset files..."
touch assets/data/profile.json
touch assets/data/projects.json
touch assets/data/services.json
touch assets/data/social_links.json
touch assets/data/apps.json

echo ">> Creating app files..."
touch lib/main.dart
touch lib/app/app.dart
touch lib/app/di/injector.dart
touch lib/app/router/app_router.dart
touch lib/app/theme/app_theme.dart
touch lib/app/theme/app_colors.dart
touch lib/app/theme/app_text_styles.dart

echo ">> Creating core files..."
touch lib/core/constants/app_assets.dart
touch lib/core/constants/app_links.dart
touch lib/core/constants/app_strings.dart
touch lib/core/helpers/responsive.dart
touch lib/core/helpers/validators.dart
touch lib/core/helpers/scroll_helpers.dart
touch lib/core/services/launch_service.dart
touch lib/core/services/scroll_service.dart
touch lib/core/services/animation_service.dart
touch lib/core/utils/extensions.dart
touch lib/core/utils/debouncer.dart
touch lib/core/widgets/cyber_frame.dart
touch lib/core/widgets/neon_button.dart
touch lib/core/widgets/glow_card.dart
touch lib/core/widgets/section_title.dart
touch lib/core/widgets/progress_bar.dart
touch lib/core/widgets/social_icon.dart
touch lib/core/widgets/back_to_top_button.dart

echo ">> Creating data files..."
touch lib/data/models/profile_model.dart
touch lib/data/models/project_model.dart
touch lib/data/models/service_model.dart
touch lib/data/models/social_link_model.dart
touch lib/data/models/app_model.dart
touch lib/data/repositories/portfolio_repository_impl.dart
touch lib/data/sources/local/portfolio_local_source.dart
touch lib/data/sources/remote/github_remote_source.dart
touch lib/data/sources/remote/gravatar_remote_source.dart
touch lib/data/state/portfolio_state.dart

echo ">> Creating feature files..."
touch lib/features/shell/presentation/pages/portfolio_shell_page.dart
touch lib/features/shell/presentation/widgets/sticky_navbar.dart
touch lib/features/shell/presentation/widgets/mobile_drawer.dart
touch lib/features/shell/presentation/widgets/scroll_progress_glow.dart

touch lib/features/hero/presentation/pages/hero_section.dart
touch lib/features/hero/presentation/widgets/hero_background.dart
touch lib/features/hero/presentation/widgets/gradient_name.dart
touch lib/features/hero/presentation/widgets/typing_roles.dart
touch lib/features/hero/presentation/widgets/rotating_avatar_ring.dart
touch lib/features/hero/presentation/widgets/hero_cta_row.dart
touch lib/features/hero/presentation/widgets/hero_stats_badges.dart

touch lib/features/about/presentation/pages/about_section.dart
touch lib/features/about/presentation/widgets/profile_summary_card.dart
touch lib/features/about/presentation/widgets/stats_counter.dart
touch lib/features/about/presentation/widgets/timeline_card.dart

touch lib/features/skills/presentation/pages/skills_section.dart
touch lib/features/skills/presentation/widgets/skill_progress_item.dart
touch lib/features/skills/presentation/widgets/intersection_animated_list.dart
touch lib/features/skills/presentation/widgets/skill_chip_grid.dart
touch lib/features/skills/presentation/widgets/tool_stack_panel.dart

touch lib/features/services/presentation/pages/services_section.dart
touch lib/features/services/presentation/widgets/service_card.dart
touch lib/features/services/presentation/widgets/service_feature_list.dart
touch lib/features/services/presentation/widgets/service_highlight_badge.dart

touch lib/features/projects/presentation/pages/projects_section.dart
touch lib/features/projects/presentation/widgets/project_card.dart
touch lib/features/projects/presentation/widgets/featured_project_card.dart
touch lib/features/projects/presentation/widgets/project_tag_chip.dart
touch lib/features/projects/presentation/widgets/project_action_row.dart

touch lib/features/apps/presentation/pages/apps_section.dart
touch lib/features/apps/presentation/widgets/app_collection_card.dart
touch lib/features/apps/presentation/widgets/app_case_study_card.dart
touch lib/features/apps/presentation/widgets/app_tile.dart

touch lib/features/contact/presentation/pages/contact_section.dart
touch lib/features/contact/presentation/widgets/contact_form.dart
touch lib/features/contact/presentation/widgets/social_links_grid.dart
touch lib/features/contact/presentation/widgets/contact_info_card.dart
touch lib/features/contact/presentation/widgets/send_message_button.dart

echo ">> Done. Your V3 scaffold has been created successfully."
