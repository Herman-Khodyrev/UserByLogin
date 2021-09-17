
import UIKit


struct User : Codable {
    let login : String?
    let id : Int?
    let node_id : String?
    let avatar_url : String?
    let gravatar_id : String?
    let url : String?
    let html_url : String?
    let followers_url : String?
    let following_url : String?
    let gists_url : String?
    let starred_url : String?
    let subscriptions_url : String?
    let organizations_url : String?
    let repos_url : String?
    let events_url : String?
    let received_events_url : String?
    let type : String?
    let site_admin : Bool?
    let name : String?
    let company : String?
    let blog : String?
    let location : String?
    let email : String?
    let hireable : String?
    let bio : String?
    let twitter_username : String?
    let public_repos : Int?
    let public_gists : Int?
    let followers : Int?
    let following : Int?
    let created_at : String?
    let updated_at : String?

    enum CodingKeys: String, CodingKey {

        case login = "login"
        case id = "id"
        case node_id = "node_id"
        case avatar_url = "avatar_url"
        case gravatar_id = "gravatar_id"
        case url = "url"
        case html_url = "html_url"
        case followers_url = "followers_url"
        case following_url = "following_url"
        case gists_url = "gists_url"
        case starred_url = "starred_url"
        case subscriptions_url = "subscriptions_url"
        case organizations_url = "organizations_url"
        case repos_url = "repos_url"
        case events_url = "events_url"
        case received_events_url = "received_events_url"
        case type = "type"
        case site_admin = "site_admin"
        case name = "name"
        case company = "company"
        case blog = "blog"
        case location = "location"
        case email = "email"
        case hireable = "hireable"
        case bio = "bio"
        case twitter_username = "twitter_username"
        case public_repos = "public_repos"
        case public_gists = "public_gists"
        case followers = "followers"
        case following = "following"
        case created_at = "created_at"
        case updated_at = "updated_at"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        login = try values.decodeIfPresent(String.self, forKey: .login)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        node_id = try values.decodeIfPresent(String.self, forKey: .node_id)
        avatar_url = try values.decodeIfPresent(String.self, forKey: .avatar_url)
        gravatar_id = try values.decodeIfPresent(String.self, forKey: .gravatar_id)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        html_url = try values.decodeIfPresent(String.self, forKey: .html_url)
        followers_url = try values.decodeIfPresent(String.self, forKey: .followers_url)
        following_url = try values.decodeIfPresent(String.self, forKey: .following_url)
        gists_url = try values.decodeIfPresent(String.self, forKey: .gists_url)
        starred_url = try values.decodeIfPresent(String.self, forKey: .starred_url)
        subscriptions_url = try values.decodeIfPresent(String.self, forKey: .subscriptions_url)
        organizations_url = try values.decodeIfPresent(String.self, forKey: .organizations_url)
        repos_url = try values.decodeIfPresent(String.self, forKey: .repos_url)
        events_url = try values.decodeIfPresent(String.self, forKey: .events_url)
        received_events_url = try values.decodeIfPresent(String.self, forKey: .received_events_url)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        site_admin = try values.decodeIfPresent(Bool.self, forKey: .site_admin)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        company = try values.decodeIfPresent(String.self, forKey: .company)
        blog = try values.decodeIfPresent(String.self, forKey: .blog)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        hireable = try values.decodeIfPresent(String.self, forKey: .hireable)
        bio = try values.decodeIfPresent(String.self, forKey: .bio)
        twitter_username = try values.decodeIfPresent(String.self, forKey: .twitter_username)
        public_repos = try values.decodeIfPresent(Int.self, forKey: .public_repos)
        public_gists = try values.decodeIfPresent(Int.self, forKey: .public_gists)
        followers = try values.decodeIfPresent(Int.self, forKey: .followers)
        following = try values.decodeIfPresent(Int.self, forKey: .following)
        created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
        updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
    }

}

