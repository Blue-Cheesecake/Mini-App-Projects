import 'package:faq_accordion_card/constants.dart';
import 'package:faq_accordion_card/style.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Item> _data = Constants.data.list;

  Text _buildTextHeader() {
    return Text(
      "FAQ",
      style: TextStyle(
        fontSize: Style.fontSize.title,
        fontWeight: FontWeight.w700,
        color: Style.color.textVeryDarkDesaturatedBlue,
      ),
    );
  }

  ExpansionPanelList _buildExpansionPaneList() {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _data[panelIndex].isExpanded = !isExpanded;
        });
      },
      children: _data.map((item) {
        return ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              contentPadding: EdgeInsets.zero,
              minVerticalPadding: 0,
              title: Text(
                item.title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: Style.fontSize.body,
                  color: isExpanded
                      ? Style.color.textVeryDarkDesaturatedBlue
                      : Style.color.textDarkGrayishBlue,
                ),
              ),
            );
          },
          body: ListTile(
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 0,
            title: Text(
              item.body,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: Style.fontSize.body,
                color: Style.color.textDarkGrayishBlue,
              ),
            ),
          ),
          canTapOnHeader: true,
          isExpanded: item.isExpanded,
        );
      }).toList(),
      dividerColor: Style.color.dividersLightGrayishBlue,
      expandedHeaderPadding: EdgeInsets.zero,
      elevation: 0,
    );
  }

  Widget _webLayout() {
    return SizedBox(
      width: 900,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        elevation: 30,
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 1),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextHeader(),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 400,
                    child: _buildExpansionPaneList(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _mobileLayout() {
    return SizedBox(
      width: 400,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            elevation: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 70,
                horizontal: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  _buildTextHeader(),
                  const SizedBox(height: 20),
                  _buildExpansionPaneList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Style.color.backgroundGradientSoftViolet,
          Style.color.backgroundGradientSoftBlue,
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Constants.screenConfiguration.shouldRenderWebLayout(context)
              ? _webLayout()
              : _mobileLayout(),
        ),
      ),
    );
  }
}
