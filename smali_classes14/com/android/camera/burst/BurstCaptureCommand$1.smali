.class Lcom/android/camera/burst/BurstCaptureCommand$1;
.super Ljava/lang/Object;
.source "BurstCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/CaptureStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstCaptureCommand;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/burst/BurstCaptureCommand;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstCaptureCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/burst/BurstCaptureCommand;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/camera/burst/BurstCaptureCommand$1;->this$0:Lcom/android/camera/burst/BurstCaptureCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/camera/async/BufferQueue;)Landroid/view/Surface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/view/Surface;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "timestamps":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand$1;->this$0:Lcom/android/camera/burst/BurstCaptureCommand;

    invoke-static {v0}, Lcom/android/camera/burst/BurstCaptureCommand;->access$000(Lcom/android/camera/burst/BurstCaptureCommand;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method
