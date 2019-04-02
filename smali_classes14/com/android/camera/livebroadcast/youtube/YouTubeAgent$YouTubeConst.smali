.class public Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$YouTubeConst;
.super Ljava/lang/Object;
.source "YouTubeAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YouTubeConst"
.end annotation


# static fields
.field public static final ENABLE_LIVE_STREAMING_WEBSITE:Ljava/lang/String; = "https://www.youtube.com/live_streaming_signup"

.field public static final ERROR_ERROR_EXECUTING_TRANSITION:Ljava/lang/String; = "errorExecutingTransition"

.field public static final ERROR_ERROR_STREAM_INACTIVE:Ljava/lang/String; = "errorStreamInactive"

.field public static final ERROR_INSUFFICIENT_LIVE_PERMISSIONS:Ljava/lang/String; = "insufficientLivePermissions"

.field public static final ERROR_INVALID_TRANSITION:Ljava/lang/String; = "invalidTransition"

.field public static final ERROR_LIVE_PERMISSION_BLOCKED:Ljava/lang/String; = "livePermissionBlocked"

.field public static final ERROR_LIVE_STREAMING_NOT_ENABLED:Ljava/lang/String; = "liveStreamingNotEnabled"

.field public static final ERROR_REDUNDANT_TRANSITION:Ljava/lang/String; = "redundantTransition"

.field public static final ERROR_USER_REQUESTS_EXCEED_RATE_LIMIT:Ljava/lang/String; = "userRequestsExceedRateLimit"

.field public static final SCHEDULE_LIVE_EVENT_WEBSITE:Ljava/lang/String; = "https://www.youtube.com/my_live_events?filter=scheduled"


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;


# direct methods
.method public constructor <init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$YouTubeConst;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
