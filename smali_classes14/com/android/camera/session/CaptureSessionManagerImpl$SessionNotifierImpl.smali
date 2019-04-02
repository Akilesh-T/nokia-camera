.class final Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;
.super Ljava/lang/Object;
.source "CaptureSessionManagerImpl.java"

# interfaces
.implements Lcom/android/camera/session/SessionNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/session/CaptureSessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionNotifierImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/session/CaptureSessionManagerImpl;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/session/CaptureSessionManagerImpl;Lcom/android/camera/session/CaptureSessionManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/session/CaptureSessionManagerImpl;
    .param p2, "x1"    # Lcom/android/camera/session/CaptureSessionManagerImpl$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl;)V

    return-void
.end method


# virtual methods
.method public notifyPostProcessImageDone(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "postProcessPreview"    # Landroid/graphics/Bitmap;
    .param p3, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$3;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public notifyRawImageSaved(Ljava/lang/String;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$4;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public notifySessionCaptureIndicatorAvailable(Landroid/net/Uri;Landroid/graphics/Bitmap;IZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 8
    .param p1, "sessionUri"    # Landroid/net/Uri;
    .param p2, "indicator"    # Landroid/graphics/Bitmap;
    .param p3, "rotationDegrees"    # I
    .param p4, "needAnim"    # Z
    .param p5, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v7

    new-instance v0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$11;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$11;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V

    invoke-virtual {v7, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method public notifySessionPictureDataAvailable([BILcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "pictureData"    # [B
    .param p2, "orientation"    # I
    .param p3, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$13;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$13;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;[BI)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method public notifySessionThumbnailAvailable(Landroid/graphics/Bitmap;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$12;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public notifySessionUpdated(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$10;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 283
    return-void
.end method

.method public notifySessionVideoDataAvailable(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 9
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "finalPath"    # Ljava/lang/String;
    .param p3, "mimetype"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p5, "orientation"    # I
    .param p6, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v8

    new-instance v0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v8, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 357
    return-void
.end method

.method public notifyTaskCanceled(Landroid/net/Uri;ZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needRecoverThumbnail"    # Z
    .param p3, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public notifyTaskFailed(Landroid/net/Uri;IZZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "failureMessageId"    # I
    .param p3, "removeFromFilmstrip"    # Z
    .param p4, "needRecoverThumbnail"    # Z
    .param p5, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v7

    new-instance v0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$5;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;IZZ)V

    invoke-virtual {v7, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method public notifyTaskProgress(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "progressPercent"    # I
    .param p3, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$7;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public notifyTaskProgressText(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "messageId"    # I
    .param p3, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$8;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$8;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Landroid/net/Uri;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$1;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public notifyTaskResultMsg(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "messageId"    # I
    .param p3, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$9;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$9;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Landroid/net/Uri;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method
