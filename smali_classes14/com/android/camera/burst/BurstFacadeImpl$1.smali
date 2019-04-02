.class Lcom/android/camera/burst/BurstFacadeImpl$1;
.super Ljava/lang/Object;
.source "BurstFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession$ImageSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstFacadeImpl;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/burst/BurstFacadeImpl;

.field final synthetic val$mainThread:Lcom/android/camera/async/MainThread;

.field final synthetic val$remainingStorageBytesState:Lcom/android/camera/async/ConcurrentState;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacadeImpl;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/MainThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/burst/BurstFacadeImpl;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeImpl$1;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    iput-object p2, p0, Lcom/android/camera/burst/BurstFacadeImpl$1;->val$remainingStorageBytesState:Lcom/android/camera/async/ConcurrentState;

    iput-object p3, p0, Lcom/android/camera/burst/BurstFacadeImpl$1;->val$mainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageSaved(I)V
    .locals 6
    .param p1, "dataSize"    # I

    .prologue
    .line 118
    iget-object v4, p0, Lcom/android/camera/burst/BurstFacadeImpl$1;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-virtual {v4}, Lcom/android/camera/burst/BurstFacadeImpl;->isBurstRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/android/camera/burst/BurstFacadeImpl$1;->val$remainingStorageBytesState:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 120
    .local v0, "availableSpace":J
    int-to-long v4, p1

    sub-long v2, v0, v4

    .line 121
    .local v2, "remaining":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 122
    iget-object v4, p0, Lcom/android/camera/burst/BurstFacadeImpl$1;->val$remainingStorageBytesState:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 135
    .end local v0    # "availableSpace":J
    .end local v2    # "remaining":J
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local v0    # "availableSpace":J
    .restart local v2    # "remaining":J
    :cond_1
    invoke-static {}, Lcom/android/camera/burst/BurstFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Storage space full, stop burst."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    iget-object v4, p0, Lcom/android/camera/burst/BurstFacadeImpl$1;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v5, Lcom/android/camera/burst/BurstFacadeImpl$1$1;

    invoke-direct {v5, p0}, Lcom/android/camera/burst/BurstFacadeImpl$1$1;-><init>(Lcom/android/camera/burst/BurstFacadeImpl$1;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
