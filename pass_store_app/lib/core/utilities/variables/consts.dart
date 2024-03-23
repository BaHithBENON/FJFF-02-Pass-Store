
import 'package:pass_store_app/core/utilities/variables/images_sources.dart';
import 'package:uuid/uuid.dart';

import '../../../features/passwords/models/model_password.dart';

const List<String> alphabetLetters = [
  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
  'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];

final List<ModelPassword> passwordsList = [
  ModelPassword(
    name: "Amazon",
    username: "ashroom01@gmailcom",
    password: const Uuid().v5(Uuid.NAMESPACE_URL, "https://www.amazon.com"),
    url: "https://www.amazon.com",
    notes: "Change password every 3 months",
    image: ImagesSources.amazon,
  ),
  ModelPassword(
    name: "Discord",
    username: "samaela01@yahoo.com",
    password: const Uuid().v5(Uuid.NAMESPACE_URL, "https://www.discord.com"),
    url: "https://discord.com",
    notes: "Enable two-factor authentication",
    image: ImagesSources.discord,
  ),
  ModelPassword(
    name: "Facebook",
    username: "(00221) 123-456-789",
    password: const Uuid().v5(Uuid.NAMESPACE_URL, "https://www.facebook.com"),
    url: "https://www.facebook.com",
    notes: "Use strong and unique password",
    image: ImagesSources.facebook,
  ),
  ModelPassword(
    name: "Instagram",
    username: "monkeydluffy19@gmail.com",
    password: const Uuid().v5(Uuid.NAMESPACE_URL, "https://www.instagram.com"),
    url: "https://www.instagram.com",
    notes: "Avoid sharing password with anyone",
    image: ImagesSources.instagram,
  ),
  ModelPassword(
    name: "Linkedin",
    username: "hibiscus032688@gmail.com",
    password: const Uuid().v5(Uuid.NAMESPACE_URL, "https://www.linkedin.com"),
    url: "https://www.linkedin.com",
    notes: "Update profile regularly",
    image: ImagesSources.linkedin,
  ),
  ModelPassword(
    name: "Snapchat",
    username: "@traflagar_law03",
    password: const Uuid().v5(Uuid.NAMESPACE_URL, "https://www.snapchat.com"),
    url: "https://www.snapchat.com",
    notes: "Keep snaps private",
    image: ImagesSources.snapchat,
  ),
  ModelPassword(
    name: "Telegram",
    username: "(00221) 123-456-789",
    password: const Uuid().v5(Uuid.NAMESPACE_URL, "https://www.telegram.org"),
    url: "https://telegram.org",
    notes: "Use secret chats for sensitive conversations",
    image: ImagesSources.telegram,
  ),
  ModelPassword(
    name: "Tik-Tok",
    username: "abigael9697@outmail.com",
    password: const Uuid().v5(Uuid.NAMESPACE_URL, "https://www.tiktok.com"),
    url: "https://www.tiktok.com",
    notes: "Avoid sharing personal information",
    image: ImagesSources.tiktok,
  ),
  ModelPassword(
    name: "Twitch",
    username: "intense_unicorn01@gmail.com",
    password: const Uuid().v5(Uuid.NAMESPACE_URL, "https://www.twitch.tv"),
    url: "https://www.twitch.tv",
    notes: "Set up stream schedule",
    image: ImagesSources.twitch,
  ),
  ModelPassword(
    name: "Twitter/X",
    username: "mahaman01@gmailcom",
    password: const Uuid().v5(Uuid.NAMESPACE_URL, "https://www.twitter.com"),
    url: "https://twitter.com",
    notes: "Follow relevant accounts",
    image: ImagesSources.twitter,
  ),
];