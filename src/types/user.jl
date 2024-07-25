export User

"""
A Discord user.
More details [here](https://discordapp.com/developers/docs/resources/user#user-object).
"""
struct User <: DiscordObject
    id::Snowflake
    # The User inside of a Presence only needs its ID set.
    username::String
    discriminator::String
    global_name::Nullable{String}
    avatar::Nullable{String}
    bot::Optional{Bool}
    system::Optional{Bool}
    mfa_enabled::Optional{Bool}
    banner::OptionalNullable{String}
    accent_color::OptionalNullable{Int}
    locale::Optional{String}
    verified::Optional{Bool}
    email::OptionalNullable{String}
    flags::Optional{Int}
    premium_type::Optional{Int}
    public_flags::Optional{Int}
    avatar_decoration_data::OptionalNullable{AvatarDecoration}
end
@boilerplate User :constructors :docs :lower :merge :mock
