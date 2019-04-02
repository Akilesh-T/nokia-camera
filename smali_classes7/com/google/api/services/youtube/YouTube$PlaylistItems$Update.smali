.class public Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$PlaylistItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest",
        "<",
        "Lcom/google/api/services/youtube/model/PlaylistItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "playlistItems"


# instance fields
.field private onBehalfOfContentOwner:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$PlaylistItems;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$PlaylistItems;Ljava/lang/String;Lcom/google/api/services/youtube/model/PlaylistItem;)V
    .locals 6

    .prologue
    .line 10598
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->this$1:Lcom/google/api/services/youtube/YouTube$PlaylistItems;

    .line 10599
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$PlaylistItems;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "PUT"

    const-string v3, "playlistItems"

    const-class v5, Lcom/google/api/services/youtube/model/PlaylistItem;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10600
    const-string v0, "Required parameter part must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->part:Ljava/lang/String;

    .line 10601
    return-void
.end method


# virtual methods
.method public getOnBehalfOfContentOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10713
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->onBehalfOfContentOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10667
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 10571
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 10571
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 10571
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;
    .locals 1

    .prologue
    .line 10734
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 10571
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;
    .locals 1

    .prologue
    .line 10605
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 10571
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;
    .locals 1

    .prologue
    .line 10610
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 10571
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;
    .locals 1

    .prologue
    .line 10615
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 10571
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;
    .locals 1

    .prologue
    .line 10620
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 10571
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    move-result-object v0

    return-object v0
.end method

.method public setOnBehalfOfContentOwner(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;
    .locals 0

    .prologue
    .line 10728
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->onBehalfOfContentOwner:Ljava/lang/String;

    .line 10729
    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;
    .locals 0

    .prologue
    .line 10684
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->part:Ljava/lang/String;

    .line 10685
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;
    .locals 1

    .prologue
    .line 10625
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 10571
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;
    .locals 1

    .prologue
    .line 10630
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 10571
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;
    .locals 1

    .prologue
    .line 10635
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 10571
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;

    move-result-object v0

    return-object v0
.end method
