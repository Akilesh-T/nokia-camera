.class Lcom/android/camera/video/VideoFacadeImpl$2;
.super Ljava/lang/Object;
.source "VideoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/VideoFacadeImpl;->stopBurst()Z
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
    .line 497
    iput-object p1, p0, Lcom/android/camera/video/VideoFacadeImpl$2;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$2;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$1200(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingStoping()V

    .line 501
    return-void
.end method
