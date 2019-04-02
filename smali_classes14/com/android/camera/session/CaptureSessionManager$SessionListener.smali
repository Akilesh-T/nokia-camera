.class public interface abstract Lcom/android/camera/session/CaptureSessionManager$SessionListener;
.super Ljava/lang/Object;
.source "CaptureSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/session/CaptureSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionListener"
.end annotation


# virtual methods
.method public abstract onSessionCanceled(Landroid/net/Uri;Z)V
.end method

.method public abstract onSessionCaptureIndicatorUpdate(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V
.end method

.method public abstract onSessionDone(Landroid/net/Uri;)V
.end method

.method public abstract onSessionFailed(Landroid/net/Uri;IZZ)V
.end method

.method public abstract onSessionPictureDataUpdate([BI)V
.end method

.method public abstract onSessionPostProcessImageDone(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onSessionProgress(Landroid/net/Uri;I)V
.end method

.method public abstract onSessionProgressText(Landroid/net/Uri;I)V
.end method

.method public abstract onSessionQueued(Landroid/net/Uri;)V
.end method

.method public abstract onSessionRawImageSaved(Ljava/lang/String;)V
.end method

.method public abstract onSessionResultMsg(Landroid/net/Uri;I)V
.end method

.method public abstract onSessionThumbnailUpdate(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onSessionUpdated(Landroid/net/Uri;)V
.end method

.method public abstract onSessionVideoDataUpdate(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
.end method
