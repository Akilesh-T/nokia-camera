.class public interface abstract Lcom/android/camera/opengl/PreviewRendererHandler;
.super Ljava/lang/Object;
.source "PreviewRendererHandler.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;


# virtual methods
.method public abstract clearRecordOutputSurface()V
.end method

.method public abstract close()V
.end method

.method public abstract getFaceDetectionListener()Lcom/android/camera/one/OneCamera$FaceDetectionListener;
.end method

.method public abstract getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;
.end method

.method public abstract getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
.end method

.method public abstract getImageGeneratorProvider()Lcom/android/camera/opengl/image/ImageGeneratorProvider;
.end method

.method public abstract getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
.end method

.method public abstract getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
.end method

.method public abstract getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.end method

.method public abstract getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
.end method

.method public abstract getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
.end method

.method public abstract getSurfaceHeight()I
.end method

.method public abstract getSurfaceWidth()I
.end method

.method public abstract getTouchListener()Landroid/view/View$OnTouchListener;
.end method

.method public abstract onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
.end method

.method public abstract setGestureChangedListener(Lcom/android/camera/opengl/GestureChangedListener;)V
.end method

.method public abstract setPreviewArea(Landroid/graphics/RectF;)V
.end method

.method public abstract setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract setRecordOutputSurface(Landroid/view/Surface;Lcom/android/camera/async/Observable;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setTwiceShotDisableSlide(Z)V
.end method

.method public abstract setZoomParams(Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)V
.end method

.method public abstract startRecord()V
.end method

.method public abstract stopRecord()V
.end method
