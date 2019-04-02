.class public Lcom/android/camera/livebroadcast/weibo/WeiboError;
.super Ljava/lang/Object;
.source "WeiboError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/livebroadcast/weibo/WeiboError$Auth;,
        Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsg(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    new-instance v2, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;-><init>(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-object v2

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 35
    .local v1, "error":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 40
    const/16 v2, 0x534a

    if-lt v1, v2, :cond_1

    const/16 v2, 0x5352

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x5359

    if-ne v1, v2, :cond_3

    .line 42
    :cond_2
    new-instance v2, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;-><init>(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;-><init>(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v2, 0x5353

    if-ne v1, v2, :cond_4

    .line 44
    new-instance v2, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    const v4, 0x7f080113

    .line 45
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;-><init>(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_4
    new-instance v2, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;-><init>(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method
