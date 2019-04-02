.class Lcom/android/camera/video/DualSightVideoFacadeImpl$1;
.super Ljava/lang/Object;
.source "DualSightVideoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DualSightVideoFacadeImpl;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/video/DualSightVideoFacadeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$1;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$1;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$200(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/async/Observable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$1;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$300(Lcom/android/camera/video/DualSightVideoFacadeImpl;)V

    .line 228
    return-void
.end method
