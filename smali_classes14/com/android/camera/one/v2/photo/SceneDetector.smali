.class public interface abstract Lcom/android/camera/one/v2/photo/SceneDetector;
.super Ljava/lang/Object;
.source "SceneDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/photo/SceneDetector$SR;,
        Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;,
        Lcom/android/camera/one/v2/photo/SceneDetector$HDR;,
        Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    }
.end annotation


# virtual methods
.method public abstract get()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
.end method

.method public abstract getCurrentIsoValue()I
.end method

.method public abstract getCurrentSensorExposureTime()J
.end method

.method public abstract getMetaData()Landroid/hardware/camera2/CameraCharacteristics;
.end method

.method public abstract onHDRModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$HDR;)V
.end method

.method public abstract onSRModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$SR;)V
.end method

.method public abstract setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V
.end method
