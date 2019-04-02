.class public interface abstract Lcom/android/camera/session/CaptureSessionFactory;
.super Ljava/lang/Object;
.source "CaptureSessionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;
    }
.end annotation


# virtual methods
.method public abstract createNewBurstSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract createNewMicroVideoSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract createNewPanoSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract createNewSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract createNewStreamingSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract createNewVideoSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
.end method
