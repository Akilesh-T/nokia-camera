.class public Lcom/android/camera/livebroadcast/youtube/EventData;
.super Ljava/lang/Object;
.source "EventData.java"


# instance fields
.field private mEvent:Lcom/google/api/services/youtube/model/LiveBroadcast;

.field private mIngestionAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Lcom/google/api/services/youtube/model/LiveBroadcast;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/EventData;->mEvent:Lcom/google/api/services/youtube/model/LiveBroadcast;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/EventData;->mEvent:Lcom/google/api/services/youtube/model/LiveBroadcast;

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIngestionAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/EventData;->mIngestionAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveChatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/EventData;->mEvent:Lcom/google/api/services/youtube/model/LiveBroadcast;

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getSnippet()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->getLiveChatId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/EventData;->mEvent:Lcom/google/api/services/youtube/model/LiveBroadcast;

    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getSnippet()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->getThumbnails()Lcom/google/api/services/youtube/model/ThumbnailDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/ThumbnailDetails;->getDefault()Lcom/google/api/services/youtube/model/Thumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/Thumbnail;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "url":Ljava/lang/String;
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/EventData;->mEvent:Lcom/google/api/services/youtube/model/LiveBroadcast;

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getSnippet()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWatchUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.youtube.com/watch?v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/youtube/EventData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEvent(Lcom/google/api/services/youtube/model/LiveBroadcast;)V
    .locals 0
    .param p1, "event"    # Lcom/google/api/services/youtube/model/LiveBroadcast;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/EventData;->mEvent:Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 21
    return-void
.end method

.method public setIngestionAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ingestionAddress"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/EventData;->mIngestionAddress:Ljava/lang/String;

    .line 46
    return-void
.end method
