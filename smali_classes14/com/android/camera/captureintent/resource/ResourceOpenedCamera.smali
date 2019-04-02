.class public interface abstract Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;
.super Ljava/lang/Object;
.source "ResourceOpenedCamera.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# virtual methods
.method public abstract getCamera()Lcom/android/camera/one/OneCamera;
.end method

.method public abstract getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;
.end method

.method public abstract getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;
.end method

.method public abstract getCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getCaptureSetting()Lcom/android/camera/one/OneCameraCaptureSetting;
.end method

.method public abstract getMaxZoom()F
.end method

.method public abstract getPictureSize()Lcom/android/camera/util/Size;
.end method

.method public abstract getZoomRatio()F
.end method

.method public abstract setZoomRatio(F)V
.end method

.method public abstract startPreview(Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
.end method

.method public abstract triggerFocusAndMeterAtPoint(Landroid/graphics/PointF;)V
.end method
