using Dizkord
ENV["JULIA_DEBUG"] = Dizkord
client = Client(
    readlines("token.txt")[1], # token in token.txt
    830208012668764250,
    intents(GUILDS, GUILD_MESSAGES)
)

on_message!(client) do (ctx) 
    println("Received message: $(ctx.message.content)")
    t = Dizkord.reply(client, ctx.message, content="test")
end

start(client)
