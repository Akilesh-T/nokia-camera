.class Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;
.super Ljava/util/TimerTask;
.source "YouTubeStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->updateYouTubeStatus(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

.field final synthetic val$nextToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->val$nextToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 73
    const/4 v9, 0x0

    .line 75
    .local v9, "response":Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v14}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$000(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/google/api/services/youtube/YouTube;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v15}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$100(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->val$nextToken:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->listChatMessages(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 80
    :goto_0
    if-eqz v9, :cond_0

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v14}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$300(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->clearComments()V

    .line 83
    invoke-virtual {v9}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->getItems()Ljava/util/List;

    move-result-object v8

    .line 84
    .local v8, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/services/youtube/model/LiveChatMessage;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_0

    .line 85
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/api/services/youtube/model/LiveChatMessage;

    .line 86
    .local v7, "message":Lcom/google/api/services/youtube/model/LiveChatMessage;
    invoke-virtual {v7}, Lcom/google/api/services/youtube/model/LiveChatMessage;->getSnippet()Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    move-result-object v10

    .line 87
    .local v10, "snippet":Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    invoke-virtual {v7}, Lcom/google/api/services/youtube/model/LiveChatMessage;->getAuthorDetails()Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    move-result-object v2

    .line 88
    .local v2, "authorDetails":Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    new-instance v3, Lcom/android/camera/livebroadcast/status/Comment;

    invoke-virtual {v2}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->getChannelId()Ljava/lang/String;

    move-result-object v14

    .line 89
    invoke-virtual {v2}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    .line 90
    invoke-virtual {v10}, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->getDisplayMessage()Ljava/lang/String;

    move-result-object v16

    .line 91
    invoke-virtual {v2}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v3, v14, v15, v0, v1}, Lcom/android/camera/livebroadcast/status/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v3, "comment":Lcom/android/camera/livebroadcast/status/Comment;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v14}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$300(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->addComment(Lcom/android/camera/livebroadcast/status/Comment;)V

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 76
    .end local v2    # "authorDetails":Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .end local v3    # "comment":Lcom/android/camera/livebroadcast/status/Comment;
    .end local v6    # "i":I
    .end local v7    # "message":Lcom/google/api/services/youtube/model/LiveChatMessage;
    .end local v8    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/services/youtube/model/LiveChatMessage;>;"
    .end local v10    # "snippet":Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    :catch_0
    move-exception v5

    .line 77
    .local v5, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateYouTubeStatus().listChatMessages() Exception="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v13, 0x0

    .line 98
    .local v13, "video":Lcom/google/api/services/youtube/model/Video;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v14}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$000(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/google/api/services/youtube/YouTube;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v15}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$400(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->getVideoInformation(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)Lcom/google/api/services/youtube/model/Video;

    move-result-object v13

    .line 99
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$502(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :cond_1
    :goto_2
    if-eqz v13, :cond_4

    .line 110
    sget-boolean v14, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->DEBUG:Z

    if-eqz v14, :cond_2

    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateYouTubeStatus() video="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    :cond_2
    invoke-virtual {v13}, Lcom/google/api/services/youtube/model/Video;->getLiveStreamingDetails()Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;

    move-result-object v4

    .line 112
    .local v4, "details":Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->getConcurrentViewers()Ljava/math/BigInteger;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 113
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v14}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$300(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v14

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;->getConcurrentViewers()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->setViewCount(I)V

    .line 119
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v14}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$300(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/api/services/youtube/model/Video;->getStatistics()Lcom/google/api/services/youtube/model/VideoStatistics;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/api/services/youtube/model/VideoStatistics;->getLikeCount()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->setLikeCount(I)V

    .line 122
    .end local v4    # "details":Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v14}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$300(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->copy()Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v11

    .line 123
    .local v11, "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v14}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$600(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    move-result-object v12

    .line 124
    .local v12, "statusCallback":Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    if-nez v12, :cond_6

    .line 125
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The status callback is not existed anymore. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    :goto_4
    return-void

    .line 100
    .end local v11    # "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    .end local v12    # "statusCallback":Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    :catch_1
    move-exception v5

    .line 101
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateYouTubeStatus().getVideoInformation() Exception="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v14}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$508(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)I

    .line 103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v14}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$500(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)I

    move-result v14

    const/16 v15, 0x1e

    if-lt v14, v15, :cond_1

    .line 104
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v14

    const-string v15, "The error count is out of count, skip it!"

    invoke-static {v14, v15}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 114
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "details":Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    :cond_5
    if-eqz v4, :cond_3

    .line 117
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v14}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$300(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->setViewCount(I)V

    goto/16 :goto_3

    .line 128
    .end local v4    # "details":Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    .restart local v11    # "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    .restart local v12    # "statusCallback":Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    :cond_6
    if-eqz v12, :cond_7

    .line 129
    sget-object v14, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->UPDATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v15, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v12, v14, v15, v11, v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :cond_7
    if-eqz v9, :cond_8

    .line 134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-virtual {v9}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->getNextPageToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->getPollingIntervalMillis()Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;Ljava/lang/String;J)V

    goto :goto_4

    .line 136
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-static {v15}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$800(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Ljava/lang/String;

    move-result-object v15

    const-wide/16 v16, 0xbb8

    invoke-static/range {v14 .. v17}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;Ljava/lang/String;J)V

    goto :goto_4
.end method
