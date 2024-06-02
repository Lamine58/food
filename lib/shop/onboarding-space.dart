// ignore_for_file: unused_import, prefer_const_constructors
import 'package:e_foodivoir/function/function.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnboardingSpace extends StatefulWidget {
  const OnboardingSpace({super.key});

  @override
  State<OnboardingSpace> createState() => _OnboardingSpaceState();
}

class _OnboardingSpaceState extends State<OnboardingSpace> {
  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Commencer',
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Colors.black,
        ),
        background: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.red,
          ),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  Text(
                    'Création de compte',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  paddingTop(10),
                  Text(
                    'Découvrez comment créer facilement un compte sur notre plateforme pour accéder à toutes les fonctionnalités et commencer votre aventure e-foodIvoire',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  Text(
                    'Personalisez votre menu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  paddingTop(10),
                  Text(
                    'Apprenez comment ajouter efficacement vos produits à votre boutique en ligne, optimisez vos fiches produit et élargissez votre offre pour attirer plus de clients',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  Text(
                    'Gestion des commandes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  paddingTop(10),
                  Text(
                    'Découvrez comment gérer efficacement les commandes, suivre les expéditions, et garantir une expérience client fluide et satisfaisante tout au long du processus d\'achat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
      );
  }
}