.class public Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;
.super Ljava/lang/Object;
.source "WeiboError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorMsg"
.end annotation


# instance fields
.field private mErrorCode:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;->mErrorCode:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .line 17
    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;->mMessage:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;->mErrorCode:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;->mMessage:Ljava/lang/String;

    return-object v0
.end method
