.class public interface abstract Lcom/android/camera/session/SessionNotifier;
.super Ljava/lang/Object;
.source "SessionNotifier.java"


# virtual methods
.method public abstract notifyPostProcessImageDone(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifyRawImageSaved(Ljava/lang/String;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifySessionCaptureIndicatorAvailable(Landroid/net/Uri;Landroid/graphics/Bitmap;IZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifySessionPictureDataAvailable([BILcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifySessionThumbnailAvailable(Landroid/graphics/Bitmap;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifySessionUpdated(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifySessionVideoDataAvailable(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifyTaskCanceled(Landroid/net/Uri;ZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifyTaskFailed(Landroid/net/Uri;IZZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifyTaskProgress(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifyTaskProgressText(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract notifyTaskResultMsg(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method
