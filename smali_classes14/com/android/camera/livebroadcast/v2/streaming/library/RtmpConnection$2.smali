.class Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$2;
.super Ljava/lang/Object;
.source "RtmpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;->handleRxInvoke(Lcom/github/faucamp/simplertmp/packets/Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;->access$000(Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
