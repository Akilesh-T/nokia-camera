.class Lcom/android/camera/video/StreamingFacadeImpl$2;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/StreamingFacadeImpl;

.field final synthetic val$isClosed:Lcom/android/camera/async/ConcurrentState;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/async/ConcurrentState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$2;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iput-object p2, p0, Lcom/android/camera/video/StreamingFacadeImpl$2;->val$isClosed:Lcom/android/camera/async/ConcurrentState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "isClosed set"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$2;->val$isClosed:Lcom/android/camera/async/ConcurrentState;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 295
    return-void
.end method
