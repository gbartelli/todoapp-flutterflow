import '/components/add_task_modal_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'nav_bar_floting_model.dart';
export 'nav_bar_floting_model.dart';

class NavBarFlotingWidget extends StatefulWidget {
  const NavBarFlotingWidget({super.key});

  @override
  State<NavBarFlotingWidget> createState() => _NavBarFlotingWidgetState();
}

class _NavBarFlotingWidgetState extends State<NavBarFlotingWidget> {
  late NavBarFlotingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarFlotingModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 70.0,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 12.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                5.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2.0,
              sigmaY: 2.0,
            ),
            child: Container(
              width: double.infinity,
              height: 70.0,
              decoration: BoxDecoration(
                color: const Color(0xFF151820),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: FaIcon(
                        FontAwesomeIcons.home,
                        color: ('saastodo://saastodo.com${GoRouterState.of(context).uri.toString()}' ==
                                    'saastodo://saastodo.com/home') ||
                                ('saastodo://saastodo.com${GoRouterState.of(context).uri.toString()}' ==
                                    'saastodo://saastodo.com/')
                            ? FlutterFlowTheme.of(context).primary
                            : Colors.white,
                        size: 25.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'Home',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.leftToRight,
                              duration: Duration(milliseconds: 100),
                            ),
                          },
                        );
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.notifications_sharp,
                        color:
                            'saastodo://saastodo.com${GoRouterState.of(context).uri.toString()}' ==
                                    'saastodo://saastodo.com/notifications'
                                ? FlutterFlowTheme.of(context).primary
                                : Colors.white,
                        size: 35.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'Notifications',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 100),
                            ),
                          },
                        );
                      },
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF105DFB),
                          shape: BoxShape.circle,
                        ),
                        child: Builder(
                          builder: (context) => FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 90.0,
                            icon: const FaIcon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                              size: 25.0,
                            ),
                            onPressed: () async {
                              showAlignedDialog(
                                context: context,
                                isGlobal: false,
                                avoidOverflow: true,
                                targetAnchor: const AlignmentDirectional(0.0, -1.0)
                                    .resolve(Directionality.of(context)),
                                followerAnchor: const AlignmentDirectional(0.0, -1.0)
                                    .resolve(Directionality.of(context)),
                                builder: (dialogContext) {
                                  return const Material(
                                    color: Colors.transparent,
                                    child: SizedBox(
                                      height: 250.0,
                                      child: AddTaskModalWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                          ),
                        ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: const Color(0x00FFFFFF),
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.chat_bubble,
                        color:
                            'saastodo://saastodo.com${GoRouterState.of(context).uri.toString()}' ==
                                    'saastodo://saastodo.com/messages'
                                ? FlutterFlowTheme.of(context).primary
                                : Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('Messages');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.person,
                        color:
                            'saastodo://saastodo.com${GoRouterState.of(context).uri.toString()}' ==
                                    'saastodo://saastodo.com/settingsPage'
                                ? FlutterFlowTheme.of(context).primary
                                : Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'settingsPage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 100),
                            ),
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
