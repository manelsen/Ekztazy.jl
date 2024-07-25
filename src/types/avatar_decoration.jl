export AvatarDecoration

"""
Avatar Decoration Data
More details [here](https://discord.com/developers/docs/resources/user#avatar-decoration-data-object).
"""
struct AvatarDecoration <: DiscordObject
    asset::String
    sku_id::Snowflake
end
@boilerplate AvatarDecoration :constructors :docs :lower :merge :mock
