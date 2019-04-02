.class public interface abstract Lcom/android/camera/session/CaptureSessionManager;
.super Ljava/lang/Object;
.source "CaptureSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    }
.end annotation


# virtual methods
.method public abstract addSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract createNewBurstSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract createNewMicroVideoSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract createNewPanoSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract createNewStreamingSession(Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract createNewVideoSession(Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract fillTemporarySession(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract getErrorMessageId(Landroid/net/Uri;)I
.end method

.method public abstract getSession(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract getSessionDirectory(Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSessionsSize()I
.end method

.method public abstract hasErrorMessage(Landroid/net/Uri;)Z
.end method

.method public abstract isSessionAlive(Landroid/net/Uri;)Z
.end method

.method public abstract onCaptureFinish()V
.end method

.method public abstract onCaptureStart()V
.end method

.method public abstract putErrorMessage(Landroid/net/Uri;I)V
.end method

.method public abstract putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V
.end method

.method public abstract removeErrorMessage(Landroid/net/Uri;)V
.end method

.method public abstract removeSession(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract removeSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end method

.method public abstract waitCaptureFinish()V
.end method
