.class Lcom/android/camera/video/VideoFacadeImpl$3;
.super Ljava/util/TimerTask;
.source "VideoFacadeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/VideoFacadeImpl;->updateRecordingTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/VideoFacadeImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/video/VideoFacadeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/camera/video/VideoFacadeImpl$3;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$3;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$1700(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/video/VideoFacadeImpl$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/video/VideoFacadeImpl$3$1;-><init>(Lcom/android/camera/video/VideoFacadeImpl$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 636
    return-void
.end method
