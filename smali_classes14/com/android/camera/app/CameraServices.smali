.class public interface abstract Lcom/android/camera/app/CameraServices;
.super Ljava/lang/Object;
.source "CameraServices.java"


# virtual methods
.method public abstract getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;
.end method

.method public abstract getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;
.end method

.method public abstract getMediaSaver()Lcom/android/camera/app/MediaSaver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMemoryManager()Lcom/android/camera/app/MemoryManager;
.end method

.method public abstract getMotionManager()Lcom/android/camera/app/MotionManager;
.end method

.method public abstract getPlaceHolderManager()Lcom/android/camera/session/PlaceholderManager;
.end method

.method public abstract getPostProcessManager()Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;
.end method

.method public abstract getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;
.end method

.method public abstract getSettingsManager()Lcom/android/camera/settings/SettingsManager;
.end method
