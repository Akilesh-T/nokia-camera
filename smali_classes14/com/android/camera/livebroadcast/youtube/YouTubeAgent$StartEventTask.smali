.class Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;
.super Landroid/os/AsyncTask;
.source "YouTubeAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartEventTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mErrorObject:Ljava/lang/Object;

.field private final mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

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
.method public constructor <init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/youtube/EventData;Lcom/android/camera/async/Observable;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p4, "eventData"    # Lcom/android/camera/livebroadcast/youtube/EventData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;",
            "Lcom/android/camera/livebroadcast/youtube/EventData;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p5, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 389
    iput-object p2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mActivity:Landroid/app/Activity;

    .line 390
    iput-object p3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .line 391
    iput-object p4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    .line 392
    iput-object p5, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mIsClosed:Lcom/android/camera/async/Observable;

    .line 393
    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;)Lcom/android/camera/async/Observable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mIsClosed:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const v7, 0x7f0800ce

    .line 419
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartEventTask doInBackground("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 420
    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mIsClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v3}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "StartEventTask - doInBackground after streaming close, ignore."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .line 468
    :goto_0
    return-object v3

    .line 425
    :cond_0
    new-instance v3, Lcom/google/api/services/youtube/YouTube$Builder;

    sget-object v4, Lcom/android/camera/livebroadcast/youtube/YouTubeUtils;->TRANSPORT:Lcom/google/api/client/http/HttpTransport;

    sget-object v5, Lcom/android/camera/livebroadcast/youtube/YouTubeUtils;->JSONFACTORY:Lcom/google/api/client/json/JsonFactory;

    iget-object v6, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .line 428
    invoke-static {v6}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$1000(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/api/services/youtube/YouTube$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08001c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/services/youtube/YouTube$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object v3

    .line 429
    invoke-virtual {v3}, Lcom/google/api/services/youtube/YouTube$Builder;->build()Lcom/google/api/services/youtube/YouTube;

    move-result-object v2

    .line 431
    .local v2, "youtube":Lcom/google/api/services/youtube/YouTube;
    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    if-nez v3, :cond_1

    .line 432
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "StartEventTask fail : mEventData is null"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 433
    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mErrorObject:Ljava/lang/Object;

    .line 434
    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto :goto_0

    .line 438
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    invoke-virtual {v3}, Lcom/android/camera/livebroadcast/youtube/EventData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->startEvent(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 467
    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v6, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$1300(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Landroid/app/Activity;Lcom/google/api/services/youtube/YouTube;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;)V

    .line 468
    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartEventTask UserRecoverableAuthIOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mErrorObject:Ljava/lang/Object;

    .line 442
    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED_LAUNCH:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto :goto_0

    .line 443
    .end local v0    # "e":Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;
    :catch_1
    move-exception v0

    .line 444
    .local v0, "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartEventTask GoogleJsonResponseException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getErrors()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "reason":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 447
    const-string v3, "liveStreamingNotEnabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "livePermissionBlocked"

    .line 448
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    :cond_2
    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iput-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mErrorObject:Ljava/lang/Object;

    .line 450
    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_0

    .line 451
    :cond_3
    const-string v3, "errorExecutingTransition"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "errorStreamInactive"

    .line 452
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "invalidTransition"

    .line 453
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "redundantTransition"

    .line 454
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 455
    :cond_4
    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mErrorObject:Ljava/lang/Object;

    .line 456
    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_0

    .line 458
    :cond_5
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mErrorObject:Ljava/lang/Object;

    .line 459
    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_0

    .line 461
    .end local v0    # "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .end local v1    # "reason":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 462
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartEventTask IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 463
    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mErrorObject:Ljava/lang/Object;

    .line 464
    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 381
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;)V
    .locals 5
    .param p1, "errorCode"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .prologue
    .line 473
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartEventTask onPostExecute errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 475
    new-instance v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask$2;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask$2;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;)V

    .line 482
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 488
    :goto_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mIsClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "StartEventTask - onPostExecute after streaming close, ignore."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 498
    :goto_1
    return-void

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$900(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 493
    :cond_1
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    if-ne p1, v1, :cond_2

    .line 494
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mErrorObject:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 381
    check-cast p1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-virtual {p0, p1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->onPostExecute(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 397
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartEventTask onPreExecute("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    new-instance v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask$1;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask$1;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;)V

    .line 410
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$900(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
