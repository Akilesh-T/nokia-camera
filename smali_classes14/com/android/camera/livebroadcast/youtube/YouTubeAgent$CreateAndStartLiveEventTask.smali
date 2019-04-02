.class Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;
.super Landroid/os/AsyncTask;
.source "YouTubeAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateAndStartLiveEventTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mErrorObject:Ljava/lang/Object;

.field private mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

.field private final mIsClosed:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

.field final synthetic this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;


# direct methods
.method public constructor <init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p4, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 246
    iput-object p2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mActivity:Landroid/app/Activity;

    .line 247
    iput-object p3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .line 248
    iput-object p4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mIsClosed:Lcom/android/camera/async/Observable;

    .line 249
    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;)Lcom/android/camera/async/Observable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mIsClosed:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 276
    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mIsClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v4}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "CreateAndStartLiveEventTask - doInBackground after streaming close, ignore."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .line 336
    :goto_0
    return-object v4

    .line 280
    :cond_0
    new-instance v4, Lcom/google/api/services/youtube/YouTube$Builder;

    sget-object v5, Lcom/android/camera/livebroadcast/youtube/YouTubeUtils;->TRANSPORT:Lcom/google/api/client/http/HttpTransport;

    sget-object v6, Lcom/android/camera/livebroadcast/youtube/YouTubeUtils;->JSONFACTORY:Lcom/google/api/client/json/JsonFactory;

    iget-object v7, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .line 283
    invoke-static {v7}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$1000(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/api/services/youtube/YouTube$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    iget-object v5, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v5}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08001c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/api/services/youtube/YouTube$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object v4

    .line 284
    invoke-virtual {v4}, Lcom/google/api/services/youtube/YouTube$Builder;->build()Lcom/google/api/services/youtube/YouTube;

    move-result-object v3

    .line 287
    .local v3, "youtube":Lcom/google/api/services/youtube/YouTube;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->createLiveEvent(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/livebroadcast/youtube/EventData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 321
    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    if-eqz v4, :cond_7

    .line 322
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CreateAndStartLiveEventTask mEventData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", address = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    .line 323
    invoke-virtual {v6}, Lcom/android/camera/livebroadcast/youtube/EventData;->getIngestionAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    .line 324
    invoke-virtual {v6}, Lcom/android/camera/livebroadcast/youtube/EventData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    :goto_1
    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    .line 330
    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/youtube/EventData;->getIngestionAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    .line 331
    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/youtube/EventData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 332
    :cond_1
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mErrorObject:Ljava/lang/Object;

    .line 333
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED_NOTFOUND:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CreateAndStartLiveEventTask UserRecoverableAuthIOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mErrorObject:Ljava/lang/Object;

    .line 291
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED_LAUNCH:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_0

    .line 292
    .end local v0    # "e":Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;
    :catch_1
    move-exception v0

    .line 293
    .local v0, "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CreateAndStartLiveEventTask GoogleJsonResponseException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getErrors()Ljava/util/List;

    move-result-object v1

    .line 297
    .local v1, "errorInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;>;"
    const-string v2, ""

    .line 298
    .local v2, "reason":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 299
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 302
    :cond_2
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    const-string v4, "liveStreamingNotEnabled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "livePermissionBlocked"

    .line 304
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 305
    :cond_3
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mErrorObject:Ljava/lang/Object;

    .line 306
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_0

    .line 307
    :cond_4
    const-string v4, "userRequestsExceedRateLimit"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "insufficientLivePermissions"

    .line 308
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 309
    :cond_5
    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0802a6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mErrorObject:Ljava/lang/Object;

    .line 310
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_0

    .line 312
    :cond_6
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mErrorObject:Ljava/lang/Object;

    .line 313
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_0

    .line 315
    .end local v0    # "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .end local v1    # "errorInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;>;"
    .end local v2    # "reason":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CreateAndStartLiveEventTask IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800be

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mErrorObject:Ljava/lang/Object;

    .line 318
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_0

    .line 326
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "CreateAndStartLiveEventTask error :  mEventData is null."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 336
    :cond_8
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->doInBackground([Ljava/lang/String;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;)V
    .locals 5
    .param p1, "errorCode"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .prologue
    .line 341
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreateAndStartLiveEventTask onPostExecute : errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 343
    new-instance v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask$2;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask$2;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;)V

    .line 350
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 356
    :goto_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mIsClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "CreateAndStartLiveEventTask - onPostExecute after streaming close, ignore."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 366
    :goto_1
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$900(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 361
    :cond_1
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    if-ne p1, v1, :cond_2

    .line 362
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 364
    :cond_2
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mErrorObject:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 237
    check-cast p1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-virtual {p0, p1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->onPostExecute(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 253
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreateAndStartLiveEventTask onPreExecute("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask$1;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask$1;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;)V

    .line 266
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$900(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
