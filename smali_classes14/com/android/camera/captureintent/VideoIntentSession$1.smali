.class Lcom/android/camera/captureintent/VideoIntentSession$1;
.super Ljava/lang/Object;
.source "VideoIntentSession.java"

# interfaces
.implements Lcom/android/camera/session/VideoRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/captureintent/VideoIntentSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/VideoIntentSession;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/VideoIntentSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/captureintent/VideoIntentSession$1;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoRecordEnd()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$1;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v0}, Lcom/android/camera/captureintent/VideoIntentSession;->access$200(Lcom/android/camera/captureintent/VideoIntentSession;)V

    .line 119
    return-void
.end method

.method public onVideoRecordError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 123
    invoke-static {}, Lcom/android/camera/captureintent/VideoIntentSession;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 124
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$1;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/VideoIntentSession;->finishWithFailure(IZ)V

    .line 125
    return-void
.end method

.method public onVideoRecordStart(JF)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "videoCaptureRateRatio"    # F

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$1;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v0, p1, p2}, Lcom/android/camera/captureintent/VideoIntentSession;->access$002(Lcom/android/camera/captureintent/VideoIntentSession;J)J

    .line 113
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession$1;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v0, p3}, Lcom/android/camera/captureintent/VideoIntentSession;->access$102(Lcom/android/camera/captureintent/VideoIntentSession;F)F

    .line 114
    return-void
.end method
