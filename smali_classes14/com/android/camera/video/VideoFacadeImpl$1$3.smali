.class Lcom/android/camera/video/VideoFacadeImpl$1$3;
.super Ljava/lang/Object;
.source "VideoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/VideoFacadeImpl$1;->onBurstStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/video/VideoFacadeImpl$1;


# direct methods
.method constructor <init>(Lcom/android/camera/video/VideoFacadeImpl$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/VideoFacadeImpl$1;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/camera/video/VideoFacadeImpl$1$3;->this$1:Lcom/android/camera/video/VideoFacadeImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1$3;->this$1:Lcom/android/camera/video/VideoFacadeImpl$1;

    iget-object v0, v0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$1200(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingStarted(I)V

    .line 393
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1$3;->this$1:Lcom/android/camera/video/VideoFacadeImpl$1;

    iget-object v0, v0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$1300(Lcom/android/camera/video/VideoFacadeImpl;)V

    .line 394
    return-void
.end method
