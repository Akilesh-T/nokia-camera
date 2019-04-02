.class public Lcom/google/api/services/youtube/YouTube$Search$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest",
        "<",
        "Lcom/google/api/services/youtube/model/SearchListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "search"


# instance fields
.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private channelType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private eventType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private forContentOwner:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private forDeveloper:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private forMine:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private locationRadius:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxResults:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private onBehalfOfContentOwner:Ljava/lang/String;
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

.field private publishedAfter:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private publishedBefore:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private regionCode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private relatedToVideoId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private relevanceLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private safeSearch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Search;

.field private topicId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private videoCaption:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private videoCategoryId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private videoDefinition:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private videoDimension:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private videoDuration:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private videoEmbeddable:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private videoLicense:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private videoSyndicated:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private videoType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Search;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 11752
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->this$1:Lcom/google/api/services/youtube/YouTube$Search;

    .line 11753
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Search;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "GET"

    const-string v3, "search"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/youtube/model/SearchListResponse;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11754
    const-string v0, "Required parameter part must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->part:Ljava/lang/String;

    .line 11755
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
    .line 11764
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
    .line 11759
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11836
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11855
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->channelType:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11875
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getForContentOwner()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 11905
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->forContentOwner:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getForDeveloper()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 11937
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->forDeveloper:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getForMine()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 11964
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->forMine:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12004
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationRadius()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12049
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->locationRadius:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 12079
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getOnBehalfOfContentOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12116
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->onBehalfOfContentOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12146
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12171
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11813
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedAfter()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 12197
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->publishedAfter:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getPublishedBefore()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 12223
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->publishedBefore:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12260
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12290
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->regionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedToVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12315
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->relatedToVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelevanceLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12345
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->relevanceLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getSafeSearch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12371
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->safeSearch:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12394
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12417
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12442
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12466
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDefinition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12493
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12519
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoDimension:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12543
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoEmbeddable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12568
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoEmbeddable:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLicense()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12596
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoLicense:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSyndicated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12623
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoSyndicated:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12647
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 11732
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Search$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Search$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 11732
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Search$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Search$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 11732
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Search$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Search$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 1

    .prologue
    .line 12661
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Search$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 11732
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Search$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Search$List;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 1

    .prologue
    .line 11769
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Search$List;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 11732
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Search$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;

    move-result-object v0

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 11844
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->channelId:Ljava/lang/String;

    .line 11845
    return-object p0
.end method

.method public setChannelType(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 11860
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->channelType:Ljava/lang/String;

    .line 11861
    return-object p0
.end method

.method public setEventType(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 11883
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->eventType:Ljava/lang/String;

    .line 11884
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 1

    .prologue
    .line 11774
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Search$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 11732
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Search$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;

    move-result-object v0

    return-object v0
.end method

.method public setForContentOwner(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 11917
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->forContentOwner:Ljava/lang/Boolean;

    .line 11918
    return-object p0
.end method

.method public setForDeveloper(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 11948
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->forDeveloper:Ljava/lang/Boolean;

    .line 11949
    return-object p0
.end method

.method public setForMine(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 11973
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->forMine:Ljava/lang/Boolean;

    .line 11974
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 1

    .prologue
    .line 11779
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Search$List;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 11732
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Search$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12020
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->location:Ljava/lang/String;

    .line 12021
    return-object p0
.end method

.method public setLocationRadius(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12064
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->locationRadius:Ljava/lang/String;

    .line 12065
    return-object p0
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12087
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->maxResults:Ljava/lang/Long;

    .line 12088
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 1

    .prologue
    .line 11784
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Search$List;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 11732
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Search$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;

    move-result-object v0

    return-object v0
.end method

.method public setOnBehalfOfContentOwner(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12131
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->onBehalfOfContentOwner:Ljava/lang/String;

    .line 12132
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12154
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->order:Ljava/lang/String;

    .line 12155
    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12180
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->pageToken:Ljava/lang/String;

    .line 12181
    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 11821
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->part:Ljava/lang/String;

    .line 11822
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 1

    .prologue
    .line 11789
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Search$List;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 11732
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Search$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Search$List;

    move-result-object v0

    return-object v0
.end method

.method public setPublishedAfter(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12206
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->publishedAfter:Lcom/google/api/client/util/DateTime;

    .line 12207
    return-object p0
.end method

.method public setPublishedBefore(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12232
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->publishedBefore:Lcom/google/api/client/util/DateTime;

    .line 12233
    return-object p0
.end method

.method public setQ(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12275
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->q:Ljava/lang/String;

    .line 12276
    return-object p0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 1

    .prologue
    .line 11794
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Search$List;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 11732
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Search$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;

    move-result-object v0

    return-object v0
.end method

.method public setRegionCode(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12298
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->regionCode:Ljava/lang/String;

    .line 12299
    return-object p0
.end method

.method public setRelatedToVideoId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12324
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->relatedToVideoId:Ljava/lang/String;

    .line 12325
    return-object p0
.end method

.method public setRelevanceLanguage(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12356
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->relevanceLanguage:Ljava/lang/String;

    .line 12357
    return-object p0
.end method

.method public setSafeSearch(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12379
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->safeSearch:Ljava/lang/String;

    .line 12380
    return-object p0
.end method

.method public setTopicId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12402
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->topicId:Ljava/lang/String;

    .line 12403
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12425
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->type:Ljava/lang/String;

    .line 12426
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 1

    .prologue
    .line 11799
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Search$List;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 11732
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Search$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;

    move-result-object v0

    return-object v0
.end method

.method public setVideoCaption(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12451
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoCaption:Ljava/lang/String;

    .line 12452
    return-object p0
.end method

.method public setVideoCategoryId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12474
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoCategoryId:Ljava/lang/String;

    .line 12475
    return-object p0
.end method

.method public setVideoDefinition(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12503
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoDefinition:Ljava/lang/String;

    .line 12504
    return-object p0
.end method

.method public setVideoDimension(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12528
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoDimension:Ljava/lang/String;

    .line 12529
    return-object p0
.end method

.method public setVideoDuration(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12551
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoDuration:Ljava/lang/String;

    .line 12552
    return-object p0
.end method

.method public setVideoEmbeddable(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12577
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoEmbeddable:Ljava/lang/String;

    .line 12578
    return-object p0
.end method

.method public setVideoLicense(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12606
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoLicense:Ljava/lang/String;

    .line 12607
    return-object p0
.end method

.method public setVideoSyndicated(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12632
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoSyndicated:Ljava/lang/String;

    .line 12633
    return-object p0
.end method

.method public setVideoType(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Search$List;
    .locals 0

    .prologue
    .line 12655
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Search$List;->videoType:Ljava/lang/String;

    .line 12656
    return-object p0
.end method
