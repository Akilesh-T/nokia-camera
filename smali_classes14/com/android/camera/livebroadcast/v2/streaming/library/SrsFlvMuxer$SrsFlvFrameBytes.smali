.class Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsFlvFrameBytes"
.end annotation


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field public size:I

.field final synthetic this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;


# direct methods
.method private constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
    .param p2, "x1"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)V

    return-void
.end method
