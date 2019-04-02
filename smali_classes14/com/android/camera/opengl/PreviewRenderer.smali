.class public Lcom/android/camera/opengl/PreviewRenderer;
.super Ljava/lang/Object;
.source "PreviewRenderer.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/video/RenderRecorder;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PreviewRenderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/PreviewRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V
    .locals 8
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p3, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "slaveCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/android/camera/opengl/PreviewRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/android/camera/opengl/PreviewRenderer$1;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    invoke-virtual {p2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow captureMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_0
    invoke-interface {p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V

    iput-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    .line 66
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V

    iput-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    goto :goto_0

    .line 52
    :pswitch_1
    new-instance v0, Lcom/android/camera/opengl/video/VideoPreviewRender;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p2

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/opengl/video/VideoPreviewRender;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;II)V

    iput-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    goto :goto_0

    .line 58
    :pswitch_2
    new-instance v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;II)V

    iput-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    goto :goto_0

    .line 61
    :pswitch_3
    new-instance v0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V

    iput-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public clearRecordOutputSurface()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0}, Lcom/android/camera/opengl/PreviewRendererHandler;->clearRecordOutputSurface()V

    .line 86
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/android/camera/opengl/PreviewRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "close()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0}, Lcom/android/camera/opengl/PreviewRendererHandler;->close()V

    .line 72
    return-void
.end method

.method public getDualSightMode()Lcom/android/camera/opengl/dualsight/DualSightMode;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    instance-of v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    check-cast v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-virtual {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->getCurrentDualSightMode()Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_MAIN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    goto :goto_0
.end method

.method public getFaceDetectionListener()Lcom/android/camera/one/OneCamera$FaceDetectionListener;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0}, Lcom/android/camera/opengl/PreviewRendererHandler;->getFaceDetectionListener()Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    move-result-object v0

    return-object v0
.end method

.method public getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0}, Lcom/android/camera/opengl/PreviewRendererHandler;->getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0}, Lcom/android/camera/opengl/PreviewRendererHandler;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    return-object v0
.end method

.method public getImageGeneratorProvider()Lcom/android/camera/opengl/image/ImageGeneratorProvider;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0}, Lcom/android/camera/opengl/PreviewRendererHandler;->getImageGeneratorProvider()Lcom/android/camera/opengl/image/ImageGeneratorProvider;

    move-result-object v0

    return-object v0
.end method

.method public getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0, p1}, Lcom/android/camera/opengl/PreviewRendererHandler;->getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/opengl/PreviewRendererHandler;->getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0}, Lcom/android/camera/opengl/PreviewRendererHandler;->getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-result-object v0

    return-object v0
.end method

.method public getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0, p1}, Lcom/android/camera/opengl/PreviewRendererHandler;->getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/opengl/PreviewRendererHandler;->getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0}, Lcom/android/camera/opengl/PreviewRendererHandler;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0}, Lcom/android/camera/opengl/PreviewRendererHandler;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0}, Lcom/android/camera/opengl/PreviewRendererHandler;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0, p1}, Lcom/android/camera/opengl/PreviewRendererHandler;->setPreviewArea(Landroid/graphics/RectF;)V

    .line 169
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/opengl/PreviewRendererHandler;->onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setGestureChangedListener(Lcom/android/camera/opengl/GestureChangedListener;)V
    .locals 1
    .param p1, "gestureChangedListener"    # Lcom/android/camera/opengl/GestureChangedListener;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0, p1}, Lcom/android/camera/opengl/PreviewRendererHandler;->setGestureChangedListener(Lcom/android/camera/opengl/GestureChangedListener;)V

    .line 90
    return-void
.end method

.method public setPreviewArea(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0, p1}, Lcom/android/camera/opengl/PreviewRendererHandler;->setPreviewArea(Landroid/graphics/RectF;)V

    .line 94
    return-void
.end method

.method public setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0, p1}, Lcom/android/camera/opengl/PreviewRendererHandler;->setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V

    .line 76
    return-void
.end method

.method public setRecordOutputSurface(Landroid/view/Surface;Lcom/android/camera/async/Observable;I)V
    .locals 1
    .param p1, "recordOutputSurface"    # Landroid/view/Surface;
    .param p3, "recordOrientation"    # I
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

    .prologue
    .line 80
    .local p2, "recordController":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/opengl/PreviewRendererHandler;->setRecordOutputSurface(Landroid/view/Surface;Lcom/android/camera/async/Observable;I)V

    .line 81
    return-void
.end method

.method public setTwiceShotDisableSlide(Z)V
    .locals 1
    .param p1, "isDisable"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0, p1}, Lcom/android/camera/opengl/PreviewRendererHandler;->setTwiceShotDisableSlide(Z)V

    .line 98
    return-void
.end method

.method public setZoomParams(Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)V
    .locals 1
    .param p1, "zoomParams"    # Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0, p1}, Lcom/android/camera/opengl/PreviewRendererHandler;->setZoomParams(Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)V

    .line 111
    return-void
.end method

.method public startRecord()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0}, Lcom/android/camera/opengl/PreviewRendererHandler;->startRecord()V

    .line 174
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/opengl/PreviewRenderer;->mPreviewEglHandler:Lcom/android/camera/opengl/PreviewRendererHandler;

    invoke-interface {v0}, Lcom/android/camera/opengl/PreviewRendererHandler;->stopRecord()V

    .line 179
    return-void
.end method
