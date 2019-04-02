.class Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;
.super Landroid/os/AsyncTask;
.source "YouTubeAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndEventTask"
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

.field private final mEndEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

.field private mErrorObject:Ljava/lang/Object;

.field private mForceToDelete:Z

.field private final mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

.field final synthetic this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;


# direct methods
.method public constructor <init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/youtube/EventData;Z)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p4, "eventData"    # Lcom/android/camera/livebroadcast/youtube/EventData;
    .param p5, "forceToDelete"    # Z

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mForceToDelete:Z

    .line 539
    iput-object p2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mActivity:Landroid/app/Activity;

    .line 540
    iput-object p3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .line 541
    iput-object p4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mEndEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    .line 542
    iput-boolean p5, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mForceToDelete:Z

    .line 543
    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const v8, 0x7f0800c4

    .line 565
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EndEventTask doInBackground("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 567
    new-instance v4, Lcom/google/api/services/youtube/YouTube$Builder;

    sget-object v5, Lcom/android/camera/livebroadcast/youtube/YouTubeUtils;->TRANSPORT:Lcom/google/api/client/http/HttpTransport;

    sget-object v6, Lcom/android/camera/livebroadcast/youtube/YouTubeUtils;->JSONFACTORY:Lcom/google/api/client/json/JsonFactory;

    iget-object v7, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .line 570
    invoke-static {v7}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$1000(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/api/services/youtube/YouTube$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    iget-object v5, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v5}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08001c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/api/services/youtube/YouTube$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object v4

    .line 571
    invoke-virtual {v4}, Lcom/google/api/services/youtube/YouTube$Builder;->build()Lcom/google/api/services/youtube/YouTube;

    move-result-object v3

    .line 573
    .local v3, "youtube":Lcom/google/api/services/youtube/YouTube;
    :try_start_0
    iget-boolean v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mForceToDelete:Z

    if-eqz v4, :cond_0

    .line 574
    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mEndEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/youtube/EventData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->deleteVideo(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 614
    :goto_0
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    :goto_1
    return-object v4

    .line 576
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mEndEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/youtube/EventData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->endEvent(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EndEventTask UserRecoverableAuthIOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mErrorObject:Ljava/lang/Object;

    .line 581
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED_LAUNCH:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto :goto_1

    .line 582
    .end local v0    # "e":Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;
    :catch_1
    move-exception v0

    .line 583
    .local v0, "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EndEventTask GoogleJsonResponseException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getErrors()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, "reason":Ljava/lang/String;
    const-string v4, "liveStreamingNotEnabled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "livePermissionBlocked"

    .line 586
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 587
    :cond_1
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mErrorObject:Ljava/lang/Object;

    .line 588
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto :goto_1

    .line 589
    :cond_2
    const-string v4, "invalidTransition"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 591
    :try_start_2
    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mEndEventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/youtube/EventData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/livebroadcast/youtube/YouTubeApi;->deleteVideo(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "EndEventTask doInBackground this live video is not lived!"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 593
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mForceToDelete:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 594
    :catch_2
    move-exception v1

    .line 595
    .local v1, "e1":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EndEventTask deleteVideo IOException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 596
    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mErrorObject:Ljava/lang/Object;

    .line 597
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_1

    .line 599
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_3
    const-string v4, "errorExecutingTransition"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "errorStreamInactive"

    .line 600
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "redundantTransition"

    .line 601
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 602
    :cond_4
    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mErrorObject:Ljava/lang/Object;

    .line 603
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_1

    .line 605
    :cond_5
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mErrorObject:Ljava/lang/Object;

    .line 606
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_1

    .line 608
    .end local v0    # "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .end local v2    # "reason":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 609
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EndEventTask IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 610
    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mErrorObject:Ljava/lang/Object;

    .line 611
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 530
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;)V
    .locals 5
    .param p1, "errorCode"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .prologue
    const/4 v4, 0x0

    .line 619
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EndEventTask onPostExecute errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 621
    new-instance v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask$2;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask$2;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;)V

    .line 628
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 634
    :goto_0
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    if-ne p1, v1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iget-boolean v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mForceToDelete:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 639
    :goto_1
    return-void

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$900(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mErrorObject:Ljava/lang/Object;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 530
    check-cast p1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-virtual {p0, p1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->onPostExecute(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 547
    invoke-static {}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EndEventTask onPreExecute("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 549
    new-instance v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask$1;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask$1;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;)V

    .line 556
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$900(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
