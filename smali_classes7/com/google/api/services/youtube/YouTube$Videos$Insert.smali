.class public Lcom/google/api/services/youtube/YouTube$Videos$Insert;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Insert"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest",
        "<",
        "Lcom/google/api/services/youtube/model/Video;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "videos"


# instance fields
.field private autoLevels:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private notifySubscribers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private onBehalfOfContentOwner:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private onBehalfOfContentOwnerChannel:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private stabilize:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Videos;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Videos;Ljava/lang/String;Lcom/google/api/services/youtube/model/Video;)V
    .locals 6

    .prologue
    .line 14781
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->this$1:Lcom/google/api/services/youtube/YouTube$Videos;

    .line 14782
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "POST"

    const-string v3, "videos"

    const-class v5, Lcom/google/api/services/youtube/model/Video;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14783
    const-string v0, "Required parameter part must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->part:Ljava/lang/String;

    .line 14784
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Videos;Ljava/lang/String;Lcom/google/api/services/youtube/model/Video;Lcom/google/api/client/http/AbstractInputStreamContent;)V
    .locals 6

    .prologue
    .line 14811
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->this$1:Lcom/google/api/services/youtube/YouTube$Videos;

    .line 14812
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "POST"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/upload/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v3}, Lcom/google/api/services/youtube/YouTube;->getServicePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "videos"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/google/api/services/youtube/model/Video;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14813
    const-string v0, "Required parameter part must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->part:Ljava/lang/String;

    .line 14814
    invoke-virtual {p0, p4}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->initializeMediaUpload(Lcom/google/api/client/http/AbstractInputStreamContent;)V

    .line 14815
    return-void
.end method


# virtual methods
.method public getAutoLevels()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 14903
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->autoLevels:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNotifySubscribers()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 14932
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->notifySubscribers:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOnBehalfOfContentOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15003
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->onBehalfOfContentOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getOnBehalfOfContentOwnerChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15059
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->onBehalfOfContentOwnerChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14874
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->part:Ljava/lang/String;

    return-object v0
.end method

.method public getStabilize()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 15095
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->stabilize:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isNotifySubscribers()Z
    .locals 2

    .prologue
    .line 14972
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->notifySubscribers:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->notifySubscribers:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 14973
    :cond_0
    const/4 v0, 0x1

    .line 14975
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->notifySubscribers:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 14757
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 14757
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 14757
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 1

    .prologue
    .line 15109
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 14757
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 1

    .prologue
    .line 14819
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 14757
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setAutoLevels(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 0

    .prologue
    .line 14911
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->autoLevels:Ljava/lang/Boolean;

    .line 14912
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 1

    .prologue
    .line 14824
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 14757
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 1

    .prologue
    .line 14829
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 14757
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setNotifySubscribers(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 0

    .prologue
    .line 14943
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->notifySubscribers:Ljava/lang/Boolean;

    .line 14944
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 1

    .prologue
    .line 14834
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 14757
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setOnBehalfOfContentOwner(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 0

    .prologue
    .line 15018
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->onBehalfOfContentOwner:Ljava/lang/String;

    .line 15019
    return-object p0
.end method

.method public setOnBehalfOfContentOwnerChannel(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 0

    .prologue
    .line 15080
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->onBehalfOfContentOwnerChannel:Ljava/lang/String;

    .line 15081
    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 0

    .prologue
    .line 14888
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->part:Ljava/lang/String;

    .line 14889
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 1

    .prologue
    .line 14839
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 14757
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 1

    .prologue
    .line 14844
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 14757
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setStabilize(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 0

    .prologue
    .line 15103
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->stabilize:Ljava/lang/Boolean;

    .line 15104
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 1

    .prologue
    .line 14849
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 14757
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v0

    return-object v0
.end method
