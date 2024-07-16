// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/component/screen.dart' as _i2;
import 'package:widgetbook_workspace/component/widget.dart' as _i3;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'ui',
    children: [
      _i1.WidgetbookFolder(
        name: 'screen',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'PokemonDetailScreen',
            useCase: _i1.WidgetbookUseCase(
              name: 'DetailScreen',
              builder: _i2.detailSscreen,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'PokemonListScreen',
            useCase: _i1.WidgetbookUseCase(
              name: 'ListScreen',
              builder: _i2.listSscreen,
            ),
          ),
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'widget',
        children: [
          _i1.WidgetbookComponent(
            name: 'EvolutionModal',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'EvolutionWidget1',
                builder: _i3.evolutionWidget1,
              ),
              _i1.WidgetbookUseCase(
                name: 'EvolutionWidget2',
                builder: _i3.evolutionWidget2,
              ),
            ],
          ),
          _i1.WidgetbookLeafComponent(
            name: 'LikeButtons',
            useCase: _i1.WidgetbookUseCase(
              name: 'LikesButton',
              builder: _i3.likesButton,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'ListShimmer',
            useCase: _i1.WidgetbookUseCase(
              name: 'ListShimmer',
              builder: _i3.listShimmer,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'PrimaryButton',
            useCase: _i1.WidgetbookUseCase(
              name: 'PrimaryButton',
              builder: _i3.primaryButton,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'ProgressBar',
            useCase: _i1.WidgetbookUseCase(
              name: 'ProgressBar',
              builder: _i3.circularProgressIndicator,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'TypeLabel',
            useCase: _i1.WidgetbookUseCase(
              name: 'TypeLabel',
              builder: _i3.typeLabel,
            ),
          ),
        ],
      ),
    ],
  )
];
