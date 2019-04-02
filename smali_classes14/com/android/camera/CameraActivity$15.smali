.class Lcom/android/camera/CameraActivity$15;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 2223
    iput-object p1, p0, Lcom/android/camera/CameraActivity$15;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onFatalError()V
    .locals 2

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/android/camera/CameraActivity$15;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$4200(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2259
    :goto_0
    return-void

    .line 2250
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$15;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$4202(Lcom/android/camera/CameraActivity;Z)Z

    .line 2253
    iget-object v0, p0, Lcom/android/camera/CameraActivity$15;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity$15;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2254
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Fatal error during onPause, call Activity.finish()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2255
    iget-object v0, p0, Lcom/android/camera/CameraActivity$15;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 2257
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$15;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$4000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    sget-object v1, Lcom/android/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/android/camera/FatalErrorHandler$Reason;

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->handleFatalError(Lcom/android/camera/FatalErrorHandler$Reason;)V

    goto :goto_0
.end method


# virtual methods
.method public onCameraError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 2227
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera error callback. error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2228
    return-void
.end method

.method public onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/RuntimeException;
    .param p2, "commandHistory"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "state"    # I

    .prologue
    .line 2232
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera Exception"

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2233
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 2236
    invoke-direct {p0}, Lcom/android/camera/CameraActivity$15;->onFatalError()V

    .line 2237
    return-void
.end method

.method public onDispatchThreadException(Ljava/lang/RuntimeException;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    const/4 v3, -0x1

    .line 2240
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "DispatchThread Exception"

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2241
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 2244
    invoke-direct {p0}, Lcom/android/camera/CameraActivity$15;->onFatalError()V

    .line 2245
    return-void
.end method
