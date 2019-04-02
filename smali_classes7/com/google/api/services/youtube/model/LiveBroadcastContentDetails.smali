.class public final Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "LiveBroadcastContentDetails.java"


# instance fields
.field private boundStreamId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private boundStreamLastUpdateTimeMs:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private closedCaptionsType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private enableClosedCaptions:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private enableContentEncryption:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private enableDvr:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private enableEmbed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private enableLowLatency:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private monitorStream:Lcom/google/api/services/youtube/model/MonitorStreamInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private projection:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private recordFromStart:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private startWithSlate:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 1

    .prologue
    .line 388
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public getBoundStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->boundStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public getBoundStreamLastUpdateTimeMs()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->boundStreamLastUpdateTimeMs:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getClosedCaptionsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->closedCaptionsType:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableClosedCaptions()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableClosedCaptions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnableContentEncryption()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableContentEncryption:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnableDvr()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableDvr:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnableEmbed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableEmbed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnableLowLatency()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableLowLatency:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMonitorStream()Lcom/google/api/services/youtube/model/MonitorStreamInfo;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->monitorStream:Lcom/google/api/services/youtube/model/MonitorStreamInfo;

    return-object v0
.end method

.method public getProjection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->projection:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordFromStart()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->recordFromStart:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStartWithSlate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->startWithSlate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 1

    .prologue
    .line 383
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    return-object v0
.end method

.method public setBoundStreamId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->boundStreamId:Ljava/lang/String;

    .line 153
    return-object p0
.end method

.method public setBoundStreamLastUpdateTimeMs(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->boundStreamLastUpdateTimeMs:Lcom/google/api/client/util/DateTime;

    .line 170
    return-object p0
.end method

.method public setClosedCaptionsType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->closedCaptionsType:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public setEnableClosedCaptions(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableClosedCaptions:Ljava/lang/Boolean;

    .line 208
    return-object p0
.end method

.method public setEnableContentEncryption(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableContentEncryption:Ljava/lang/Boolean;

    .line 225
    return-object p0
.end method

.method public setEnableDvr(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableDvr:Ljava/lang/Boolean;

    .line 252
    return-object p0
.end method

.method public setEnableEmbed(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableEmbed:Ljava/lang/Boolean;

    .line 273
    return-object p0
.end method

.method public setEnableLowLatency(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableLowLatency:Ljava/lang/Boolean;

    .line 290
    return-object p0
.end method

.method public setMonitorStream(Lcom/google/api/services/youtube/model/MonitorStreamInfo;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->monitorStream:Lcom/google/api/services/youtube/model/MonitorStreamInfo;

    .line 309
    return-object p0
.end method

.method public setProjection(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->projection:Ljava/lang/String;

    .line 326
    return-object p0
.end method

.method public setRecordFromStart(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->recordFromStart:Ljava/lang/Boolean;

    .line 355
    return-object p0
.end method

.method public setStartWithSlate(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->startWithSlate:Ljava/lang/Boolean;

    .line 378
    return-object p0
.end method
