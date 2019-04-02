.class public Lcom/android/camera/livebroadcast/youtube/YouTubeApi;
.super Ljava/lang/Object;
.source "YouTubeApi.java"


# static fields
.field private static final FUTURE_DATE_OFFSET_MILLIS:I = 0x1388

.field private static final LIVE_CHAT_FIELDS:Ljava/lang/String; = "items(authorDetails(channelId,displayName,isChatModerator,isChatOwner,isChatSponsor,profileImageUrl),snippet(displayMessage,superChatDetails,publishedAt)),nextPageToken,pollingIntervalMillis"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LB]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLiveEvent(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/livebroadcast/youtube/EventData;
    .locals 30
    .param p0, "youtube"    # Lcom/google/api/services/youtube/YouTube;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "privacyStatus"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v26, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 42
    .local v9, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v26, "UTC"

    invoke-static/range {v26 .. v26}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x1388

    add-long v12, v26, v28

    .line 45
    .local v12, "futureDateMillis":J
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 46
    .local v11, "futureDate":Ljava/util/Date;
    invoke-virtual {v11, v12, v13}, Ljava/util/Date;->setTime(J)V

    .line 47
    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, "date":Ljava/lang/String;
    sget-object v26, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v27, "Creating event: name=\'%s\', date=\'%s\'."

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object p1, v28, v29

    const/16 v29, 0x1

    aput-object v8, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    new-instance v5, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    invoke-direct {v5}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;-><init>()V

    .line 52
    .local v5, "broadcastSnippet":Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    .line 53
    new-instance v26, Lcom/google/api/client/util/DateTime;

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Lcom/google/api/client/util/DateTime;-><init>(Ljava/util/Date;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->setScheduledStartTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    .line 55
    new-instance v7, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    invoke-direct {v7}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;-><init>()V

    .line 56
    .local v7, "contentDetails":Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    new-instance v18, Lcom/google/api/services/youtube/model/MonitorStreamInfo;

    invoke-direct/range {v18 .. v18}, Lcom/google/api/services/youtube/model/MonitorStreamInfo;-><init>()V

    .line 57
    .local v18, "monitorStream":Lcom/google/api/services/youtube/model/MonitorStreamInfo;
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/model/MonitorStreamInfo;->setEnableMonitorStream(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/MonitorStreamInfo;

    .line 58
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->setMonitorStream(Lcom/google/api/services/youtube/model/MonitorStreamInfo;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    .line 59
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->setEnableLowLatency(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    .line 63
    new-instance v21, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    invoke-direct/range {v21 .. v21}, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;-><init>()V

    .line 64
    .local v21, "status":Lcom/google/api/services/youtube/model/LiveBroadcastStatus;
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->setPrivacyStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    .line 66
    new-instance v4, Lcom/google/api/services/youtube/model/LiveBroadcast;

    invoke-direct {v4}, Lcom/google/api/services/youtube/model/LiveBroadcast;-><init>()V

    .line 67
    .local v4, "broadcast":Lcom/google/api/services/youtube/model/LiveBroadcast;
    const-string v26, "youtube#liveBroadcast"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 68
    invoke-virtual {v4, v5}, Lcom/google/api/services/youtube/model/LiveBroadcast;->setSnippet(Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;)Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 69
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->setStatus(Lcom/google/api/services/youtube/model/LiveBroadcastStatus;)Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 70
    invoke-virtual {v4, v7}, Lcom/google/api/services/youtube/model/LiveBroadcast;->setContentDetails(Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;)Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v26

    const-string v27, "snippet,status,contentDetails"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->insert(Ljava/lang/String;Lcom/google/api/services/youtube/model/LiveBroadcast;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Insert;

    move-result-object v16

    .line 78
    .local v16, "liveBroadcastInsert":Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Insert;
    invoke-virtual/range {v16 .. v16}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Insert;->execute()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 81
    .local v19, "returnedBroadcast":Lcom/google/api/services/youtube/model/LiveBroadcast;
    new-instance v24, Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    invoke-direct/range {v24 .. v24}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;-><init>()V

    .line 82
    .local v24, "streamSnippet":Lcom/google/api/services/youtube/model/LiveStreamSnippet;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    .line 86
    new-instance v6, Lcom/google/api/services/youtube/model/CdnSettings;

    invoke-direct {v6}, Lcom/google/api/services/youtube/model/CdnSettings;-><init>()V

    .line 87
    .local v6, "cdn":Lcom/google/api/services/youtube/model/CdnSettings;
    const-string v26, "720p"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/google/api/services/youtube/model/CdnSettings;->setFormat(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CdnSettings;

    .line 89
    const-string v26, "rtmp"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/google/api/services/youtube/model/CdnSettings;->setIngestionType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CdnSettings;

    .line 91
    new-instance v22, Lcom/google/api/services/youtube/model/LiveStream;

    invoke-direct/range {v22 .. v22}, Lcom/google/api/services/youtube/model/LiveStream;-><init>()V

    .line 92
    .local v22, "stream":Lcom/google/api/services/youtube/model/LiveStream;
    const-string v26, "youtube#liveStream"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/model/LiveStream;->setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStream;

    .line 93
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/model/LiveStream;->setSnippet(Lcom/google/api/services/youtube/model/LiveStreamSnippet;)Lcom/google/api/services/youtube/model/LiveStream;

    .line 94
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/google/api/services/youtube/model/LiveStream;->setCdn(Lcom/google/api/services/youtube/model/CdnSettings;)Lcom/google/api/services/youtube/model/LiveStream;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/services/youtube/YouTube;->liveStreams()Lcom/google/api/services/youtube/YouTube$LiveStreams;

    move-result-object v26

    const-string v27, "snippet,cdn"

    .line 98
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/api/services/youtube/YouTube$LiveStreams;->insert(Ljava/lang/String;Lcom/google/api/services/youtube/model/LiveStream;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Insert;

    move-result-object v17

    .line 101
    .local v17, "liveStreamInsert":Lcom/google/api/services/youtube/YouTube$LiveStreams$Insert;
    invoke-virtual/range {v17 .. v17}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Insert;->execute()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/api/services/youtube/model/LiveStream;

    .line 105
    .local v20, "returnedStream":Lcom/google/api/services/youtube/model/LiveStream;
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v26

    invoke-virtual/range {v19 .. v19}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getId()Ljava/lang/String;

    move-result-object v27

    const-string v28, "id,contentDetails,snippet"

    invoke-virtual/range {v26 .. v28}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->bind(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Bind;

    move-result-object v15

    .line 109
    .local v15, "liveBroadcastBind":Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Bind;
    invoke-virtual/range {v20 .. v20}, Lcom/google/api/services/youtube/model/LiveStream;->getId()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Bind;->setStreamId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Bind;

    .line 112
    invoke-virtual {v15}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Bind;->execute()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 114
    .local v25, "targetBroadcast":Lcom/google/api/services/youtube/model/LiveBroadcast;
    new-instance v10, Lcom/android/camera/livebroadcast/youtube/EventData;

    invoke-direct {v10}, Lcom/android/camera/livebroadcast/youtube/EventData;-><init>()V

    .line 115
    .local v10, "event":Lcom/android/camera/livebroadcast/youtube/EventData;
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/android/camera/livebroadcast/youtube/EventData;->setEvent(Lcom/google/api/services/youtube/model/LiveBroadcast;)V

    .line 116
    invoke-virtual/range {v25 .. v25}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getContentDetails()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->getBoundStreamId()Ljava/lang/String;

    move-result-object v23

    .line 117
    .local v23, "streamId":Ljava/lang/String;
    sget-object v26, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Creating event with streamId:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->getIngestionAddress(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 119
    .local v14, "ingestionAddress":Ljava/lang/String;
    invoke-virtual {v10, v14}, Lcom/android/camera/livebroadcast/youtube/EventData;->setIngestionAddress(Ljava/lang/String;)V

    .line 120
    sget-object v26, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v27, "Creating event successfully!"

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    return-object v10
.end method

.method public static deleteVideo(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V
    .locals 4
    .param p0, "youtube"    # Lcom/google/api/services/youtube/YouTube;
    .param p1, "videoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v0, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube;->videos()Lcom/google/api/services/youtube/YouTube$Videos;

    move-result-object v3

    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/api/services/youtube/YouTube$Videos;->delete(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Delete;

    move-result-object v1

    .line 230
    .local v1, "videosDeleteRequest":Lcom/google/api/services/youtube/YouTube$Videos$Delete;
    invoke-virtual {v1}, Lcom/google/api/services/youtube/YouTube$Videos$Delete;->execute()Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public static endEvent(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V
    .locals 4
    .param p0, "youtube"    # Lcom/google/api/services/youtube/YouTube;
    .param p1, "broadcastId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v1

    const-string v2, "complete"

    const-string v3, "status"

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->transition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Transition;

    move-result-object v0

    .line 172
    .local v0, "transitionRequest":Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Transition;
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Transition;->execute()Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public static getIngestionAddress(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "youtube"    # Lcom/google/api/services/youtube/YouTube;
    .param p1, "streamId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube;->liveStreams()Lcom/google/api/services/youtube/YouTube$LiveStreams;

    move-result-object v4

    const-string v5, "cdn"

    .line 178
    invoke-virtual {v4, v5}, Lcom/google/api/services/youtube/YouTube$LiveStreams;->list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$List;

    move-result-object v1

    .line 179
    .local v1, "liveStreamRequest":Lcom/google/api/services/youtube/YouTube$LiveStreams$List;
    invoke-virtual {v1, p1}, Lcom/google/api/services/youtube/YouTube$LiveStreams$List;->setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$List;

    .line 180
    invoke-virtual {v1}, Lcom/google/api/services/youtube/YouTube$LiveStreams$List;->execute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/youtube/model/LiveStreamListResponse;

    .line 182
    .local v2, "returnedStream":Lcom/google/api/services/youtube/model/LiveStreamListResponse;
    invoke-virtual {v2}, Lcom/google/api/services/youtube/model/LiveStreamListResponse;->getItems()Ljava/util/List;

    move-result-object v3

    .line 183
    .local v3, "streamList":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/services/youtube/model/LiveStream;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    const-string v4, ""

    .line 187
    :goto_0
    return-object v4

    .line 186
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/youtube/model/LiveStream;

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/LiveStream;->getCdn()Lcom/google/api/services/youtube/model/CdnSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/CdnSettings;->getIngestionInfo()Lcom/google/api/services/youtube/model/IngestionInfo;

    move-result-object v0

    .line 187
    .local v0, "ingestionInfo":Lcom/google/api/services/youtube/model/IngestionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/IngestionInfo;->getIngestionAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 188
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/IngestionInfo;->getStreamName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getTargetLiveEvent(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)Lcom/android/camera/livebroadcast/youtube/EventData;
    .locals 9
    .param p0, "youtube"    # Lcom/google/api/services/youtube/YouTube;
    .param p1, "targetStreamId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    sget-object v7, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "Requesting live events."

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v7

    const-string v8, "id,snippet,contentDetails"

    invoke-virtual {v7, v8}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;

    move-result-object v3

    .line 132
    .local v3, "liveBroadcastRequest":Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;
    const-string v7, "upcoming"

    invoke-virtual {v3, v7}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;->setBroadcastStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;

    .line 135
    invoke-virtual {v3}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;->execute()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/youtube/model/LiveBroadcastListResponse;

    .line 138
    .local v5, "returnedListResponse":Lcom/google/api/services/youtube/model/LiveBroadcastListResponse;
    invoke-virtual {v5}, Lcom/google/api/services/youtube/model/LiveBroadcastListResponse;->getItems()Ljava/util/List;

    move-result-object v4

    .line 140
    .local v4, "returnedList":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/services/youtube/model/LiveBroadcast;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 141
    .local v0, "broadcast":Lcom/google/api/services/youtube/model/LiveBroadcast;
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getContentDetails()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->getBoundStreamId()Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "streamId":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 143
    new-instance v1, Lcom/android/camera/livebroadcast/youtube/EventData;

    invoke-direct {v1}, Lcom/android/camera/livebroadcast/youtube/EventData;-><init>()V

    .line 144
    .local v1, "event":Lcom/android/camera/livebroadcast/youtube/EventData;
    invoke-virtual {v1, v0}, Lcom/android/camera/livebroadcast/youtube/EventData;->setEvent(Lcom/google/api/services/youtube/model/LiveBroadcast;)V

    .line 145
    invoke-static {p0, v6}, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->getIngestionAddress(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "ingestionAddress":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/camera/livebroadcast/youtube/EventData;->setIngestionAddress(Ljava/lang/String;)V

    .line 150
    .end local v0    # "broadcast":Lcom/google/api/services/youtube/model/LiveBroadcast;
    .end local v1    # "event":Lcom/android/camera/livebroadcast/youtube/EventData;
    .end local v2    # "ingestionAddress":Ljava/lang/String;
    .end local v6    # "streamId":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getVideoInformation(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)Lcom/google/api/services/youtube/model/Video;
    .locals 5
    .param p0, "youtube"    # Lcom/google/api/services/youtube/YouTube;
    .param p1, "videoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v0, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "part"

    const-string v4, "snippet,contentDetails,statistics,liveStreamingDetails"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v3, "id"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube;->videos()Lcom/google/api/services/youtube/YouTube$Videos;

    move-result-object v4

    const-string v3, "part"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/api/services/youtube/YouTube$Videos;->list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$List;

    move-result-object v2

    .line 217
    .local v2, "videosListByIdRequest":Lcom/google/api/services/youtube/YouTube$Videos$List;
    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 218
    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/services/youtube/YouTube$Videos$List;->setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$List;

    .line 221
    :cond_0
    invoke-virtual {v2}, Lcom/google/api/services/youtube/YouTube$Videos$List;->execute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/youtube/model/VideoListResponse;

    .line 222
    .local v1, "response":Lcom/google/api/services/youtube/model/VideoListResponse;
    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/VideoListResponse;->getItems()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/youtube/model/Video;

    return-object v3
.end method

.method public static listChatMessages(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 3
    .param p0, "youtube"    # Lcom/google/api/services/youtube/YouTube;
    .param p1, "liveChatId"    # Ljava/lang/String;
    .param p2, "nextPageToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube;->liveChatMessages()Lcom/google/api/services/youtube/YouTube$LiveChatMessages;

    move-result-object v1

    const-string v2, "snippet, authorDetails"

    .line 204
    invoke-virtual {v1, p1, v2}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages;->list(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object v1

    .line 205
    invoke-virtual {v1, p2}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object v1

    const-string v2, "items(authorDetails(channelId,displayName,isChatModerator,isChatOwner,isChatSponsor,profileImageUrl),snippet(displayMessage,superChatDetails,publishedAt)),nextPageToken,pollingIntervalMillis"

    .line 206
    invoke-virtual {v1, v2}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    .line 208
    .local v0, "response":Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    return-object v0
.end method

.method public static startEvent(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V
    .locals 5
    .param p0, "youtube"    # Lcom/google/api/services/youtube/YouTube;
    .param p1, "broadcastId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v2

    const-string v3, "live"

    const-string v4, "status"

    invoke-virtual {v2, v3, p1, v4}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->transition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Transition;

    move-result-object v1

    .line 165
    .local v1, "transitionRequest":Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Transition;
    invoke-virtual {v1}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Transition;->execute()Ljava/lang/Object;

    .line 166
    return-void

    .line 159
    .end local v1    # "transitionRequest":Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Transition;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
