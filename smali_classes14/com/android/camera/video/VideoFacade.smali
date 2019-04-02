.class public interface abstract Lcom/android/camera/video/VideoFacade;
.super Ljava/lang/Object;
.source "VideoFacade.java"

# interfaces
.implements Lcom/android/camera/burst/BurstFacade;


# virtual methods
.method public abstract getCamcorderProfile()Landroid/media/CamcorderProfile;
.end method

.method public abstract setLiveBroadcastStatusInfo(Lcom/android/camera/video/LiveBroadcastStatusController;)V
.end method

.method public abstract setRecordingInfo(Landroid/media/CamcorderProfile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;IJLandroid/net/Uri;Landroid/view/Surface;Lcom/android/camera/video/OnRecordTimeUpdateListener;Lcom/android/camera/async/Observable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/CamcorderProfile;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "IJ",
            "Landroid/net/Uri;",
            "Landroid/view/Surface;",
            "Lcom/android/camera/video/OnRecordTimeUpdateListener;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setStreamingInfo(Lcom/android/camera/video/CountdownController;Lcom/android/camera/async/Observable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/video/CountdownController;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
