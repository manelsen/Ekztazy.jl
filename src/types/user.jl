export User

"""
A Discord user.
More details [here](https://discordapp.com/developers/docs/resources/user#user-object).
"""
struct User <: DiscordObject
    id::Snowflake
    # The User inside of a Presence only needs its ID set.
    username::Optional{String}
    discriminator::Optional{String}
    global_name::OptionalNullable{String}
    avatar::OptionalNullable{String}
    bot::Optional{Bool}
    system::Optional{Bool}
    mfa_enabled::Optional{Bool}
    banner::OptionalNullable{String}
    accent_color::OptionalNullable{Integer}
    locale::Optional{String}
    verified::Optional{Bool}
    email::OptionalNullable{String}
    flags::Optional{Integer}
    premium_type::Optional{Integer}
    public_flags::Optional{Integer}
end
@boilerplate User :constructors :docs :lower :merge :mock
