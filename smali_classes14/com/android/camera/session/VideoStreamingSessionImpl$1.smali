.class Lcom/android/camera/session/VideoStreamingSessionImpl$1;
.super Ljava/lang/Object;
.source "VideoStreamingSessionImpl.java"

# interfaces
.implements Lcom/android/camera/session/VideoRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/session/VideoStreamingSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/VideoStreamingSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/session/VideoStreamingSessionImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/VideoStreamingSessionImpl;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl$1;->this$0:Lcom/android/camera/session/VideoStreamingSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoRecordEnd()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl$1;->this$0:Lcom/android/camera/session/VideoStreamingSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/VideoStreamingSessionImpl;->access$200(Lcom/android/camera/session/VideoStreamingSessionImpl;)V

    .line 105
    return-void
.end method

.method public onVideoRecordError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 109
    invoke-static {}, Lcom/android/camera/session/VideoStreamingSessionImpl;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoRecordError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl$1;->this$0:Lcom/android/camera/session/VideoStreamingSessionImpl;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/VideoStreamingSessionImpl;->finishWithFailure(IZ)V

    .line 111
    return-void
.end method

.method public onVideoRecordStart(JF)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "videoCaptureRateRatio"    # F

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl$1;->this$0:Lcom/android/camera/session/VideoStreamingSessionImpl;

    invoke-static {v0, p1, p2}, Lcom/android/camera/session/VideoStreamingSessionImpl;->access$002(Lcom/android/camera/session/VideoStreamingSessionImpl;J)J

    .line 99
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl$1;->this$0:Lcom/android/camera/session/VideoStreamingSessionImpl;

    invoke-static {v0, p3}, Lcom/android/camera/session/VideoStreamingSessionImpl;->access$102(Lcom/android/camera/session/VideoStreamingSessionImpl;F)F

    .line 100
    return-void
.end method
