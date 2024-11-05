import 'package:flutter/material.dart';
import 'package:testflutter/common/app_base_screen.dart';
import 'package:testflutter/common/widgets/core/app_elevated_button.dart';
import 'package:testflutter/temple%20view/community_card_lg.dart';

class CommuntyScreen extends StatelessWidget {
  const CommuntyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBaseScreen(
      screen: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            children: [
              _renderCommunitySection(context),
              _renderSizedBox(),
              _renderActionButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderCommunityHeader(BuildContext context) {
    return Text("Community", style: Theme.of(context).textTheme.titleMedium);
  }

  Widget _renderCommunitySection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _renderCommunityHeader(context),
        const SizedBox(
          height: 12.0,
        ),
        const CommunityCardLg(),
        _renderSizedBox(),
        const CommunityCardLg(),
        _renderSizedBox(),
        const CommunityCardLg(),
        _renderSizedBox(),
        const CommunityCardLg(),
        _renderSizedBox(),
      ],
    );
  }

  Widget _renderSizedBox() {
    return const SizedBox(
      height: 16.0,
    );
  }

  Widget _renderActionButton() {
    return const SizedBox(
      height: 56,
      child: AppElevatedButton(
          aebText: "Add Community", aebPrefixIcon: Icons.add_circle_outline),
    );
  }
}
