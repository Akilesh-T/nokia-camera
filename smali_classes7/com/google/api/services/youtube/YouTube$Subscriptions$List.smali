.class public Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Subscriptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest",
        "<",
        "Lcom/google/api/services/youtube/model/SubscriptionListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "subscriptions"


# instance fields
.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private forChannelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxResults:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private mine:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private myRecentSubscribers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private mySubscribers:Ljava/lang/Boolean;
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

.field private order:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Subscriptions;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Subscriptions;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 13145
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->this$1:Lcom/google/api/services/youtube/YouTube$Subscriptions;

    .line 13146
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Subscriptions;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "GET"

    const-string v3, "subscriptions"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/youtube/model/SubscriptionListResponse;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13147
    const-string v0, "Required parameter part must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->part:Ljava/lang/String;

    .line 13148
    return-void
.end method


# virtual methods
.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13157
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13152
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13244
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getForChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13267
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->forChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13292
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 13316
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getMine()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 13338
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->mine:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMyRecentSubscribers()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 13361
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->myRecentSubscribers:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMySubscribers()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 13384
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->mySubscribers:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOnBehalfOfContentOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13421
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->onBehalfOfContentOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getOnBehalfOfContentOwnerChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13477
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->onBehalfOfContentOwnerChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13513
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13538
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13216
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 13122
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 13122
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 13122
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 1

    .prologue
    .line 13553
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13122
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 1

    .prologue
    .line 13162
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13122
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object v0

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .prologue
    .line 13252
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->channelId:Ljava/lang/String;

    .line 13253
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 1

    .prologue
    .line 13167
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13122
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object v0

    return-object v0
.end method

.method public setForChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .prologue
    .line 13275
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->forChannelId:Ljava/lang/String;

    .line 13276
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .prologue
    .line 13301
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->id:Ljava/lang/String;

    .line 13302
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 1

    .prologue
    .line 13172
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13122
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object v0

    return-object v0
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .prologue
    .line 13324
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->maxResults:Ljava/lang/Long;

    .line 13325
    return-object p0
.end method

.method public setMine(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .prologue
    .line 13346
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->mine:Ljava/lang/Boolean;

    .line 13347
    return-object p0
.end method

.method public setMyRecentSubscribers(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .prologue
    .line 13369
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->myRecentSubscribers:Ljava/lang/Boolean;

    .line 13370
    return-object p0
.end method

.method public setMySubscribers(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .prologue
    .line 13392
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->mySubscribers:Ljava/lang/Boolean;

    .line 13393
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 1

    .prologue
    .line 13177
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13122
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object v0

    return-object v0
.end method

.method public setOnBehalfOfContentOwner(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .prologue
    .line 13436
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->onBehalfOfContentOwner:Ljava/lang/String;

    .line 13437
    return-object p0
.end method

.method public setOnBehalfOfContentOwnerChannel(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .prologue
    .line 13498
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->onBehalfOfContentOwnerChannel:Ljava/lang/String;

    .line 13499
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .prologue
    .line 13521
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->order:Ljava/lang/String;

    .line 13522
    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .prologue
    .line 13547
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->pageToken:Ljava/lang/String;

    .line 13548
    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .prologue
    .line 13229
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->part:Ljava/lang/String;

    .line 13230
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 1

    .prologue
    .line 13182
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13122
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 1

    .prologue
    .line 13187
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13122
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 1

    .prologue
    .line 13192
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13122
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object v0

    return-object v0
.end method
