.class Lcom/android/camera/video/DualSightVideoFacadeImpl$4;
.super Ljava/util/TimerTask;
.source "DualSightVideoFacadeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DualSightVideoFacadeImpl;->updateRecordingTime()V
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
    .line 641
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$4;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$4;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1900(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$4$1;

    invoke-direct {v1, p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$4$1;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$4;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 650
    return-void
.end method
