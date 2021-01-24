import 'package:json_annotation/json_annotation.dart';
import "user.dart";
part 'repo.g.dart';

@JsonSerializable()
class Repo {
  Repo();

  num id;
  String name;
  String full_name;
  User owner;
  Repo parent;
  bool private;
  String html_url;
  String description;
  bool fork;
  String homepage;
  String language;
  num forks_count;
  num stargazers_count;
  num watchers_count;
  num size;
  String default_branch;
  num open_issues_count;
  List topics;
  bool has_issues;
  bool has_projects;
  bool has_wiki;
  bool has_pages;
  bool has_downloads;
  String pushed_at;
  String created_at;
  String updated_at;
  Map<String,dynamic> permissions;
  num subscribers_count;
  Map<String,dynamic> license;

  @override
  String toString() {
    return 'Repo{id: $id, name: $name, full_name: $full_name, owner: $owner, parent: $parent, private: $private, html_url: $html_url, description: $description, fork: $fork, homepage: $homepage, language: $language, forks_count: $forks_count, stargazers_count: $stargazers_count, watchers_count: $watchers_count, size: $size, default_branch: $default_branch, open_issues_count: $open_issues_count, topics: $topics, has_issues: $has_issues, has_projects: $has_projects, has_wiki: $has_wiki, has_pages: $has_pages, has_downloads: $has_downloads, pushed_at: $pushed_at, created_at: $created_at, updated_at: $updated_at, permissions: $permissions, subscribers_count: $subscribers_count, license: $license}';
  }

  factory Repo.fromJson(Map<String,dynamic> json) => _$RepoFromJson(json);
  Map<String, dynamic> toJson() => _$RepoToJson(this);
}