.class public abstract Lcom/android/camera/PanoramaUI;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# static fields
.field protected static final UNSET:F


# instance fields
.field protected mActivity:Lcom/android/camera/CameraActivity;

.field protected mAspectRatio:F

.field protected mController:Lcom/android/camera/PanoramaController;

.field protected mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field protected mPreviewBufferSize:Landroid/graphics/RectF;

.field protected final mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field protected mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/android/camera/PanoramaUI;->mPreviewWidth:I

    .line 35
    iput v0, p0, Lcom/android/camera/PanoramaUI;->mPreviewHeight:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaUI;->mAspectRatio:F

    .line 47
    new-instance v0, Lcom/android/camera/PanoramaUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaUI$1;-><init>(Lcom/android/camera/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoramaController;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/PanoramaController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/android/camera/PanoramaUI;->mPreviewWidth:I

    .line 35
    iput v0, p0, Lcom/android/camera/PanoramaUI;->mPreviewHeight:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaUI;->mAspectRatio:F

    .line 47
    new-instance v0, Lcom/android/camera/PanoramaUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaUI$1;-><init>(Lcom/android/camera/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 116
    iput-object p1, p0, Lcom/android/camera/PanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 117
    iput-object p2, p0, Lcom/android/camera/PanoramaUI;->mController:Lcom/android/camera/PanoramaController;

    .line 118
    iput-object p3, p0, Lcom/android/camera/PanoramaUI;->mRootView:Landroid/view/View;

    .line 119
    return-void
.end method


# virtual methods
.method public abstract frameUpdate(Landroid/graphics/Bitmap;[II[II)V
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/PanoramaUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/PanoramaUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract hideUIWhenPanoStart()V
.end method

.method public abstract initPanoramaUI()V
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/PanoramaUI;->mController:Lcom/android/camera/PanoramaController;

    invoke-interface {v0}, Lcom/android/camera/PanoramaController;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/PanoramaUI;->mPreviewBufferSize:Landroid/graphics/RectF;

    .line 89
    return-void
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaUI;->mController:Lcom/android/camera/PanoramaController;

    invoke-interface {v0}, Lcom/android/camera/PanoramaController;->updateCameraOrientation()V

    .line 84
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 69
    sub-int v1, p4, p2

    .line 70
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 71
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/PanoramaUI;->mPreviewWidth:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/camera/PanoramaUI;->mPreviewHeight:I

    if-eq v2, v0, :cond_1

    .line 72
    :cond_0
    iput v1, p0, Lcom/android/camera/PanoramaUI;->mPreviewWidth:I

    .line 73
    iput v0, p0, Lcom/android/camera/PanoramaUI;->mPreviewHeight:I

    .line 75
    :cond_1
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/PanoramaUI;->mController:Lcom/android/camera/PanoramaController;

    invoke-interface {v0}, Lcom/android/camera/PanoramaController;->onPreviewUIReady()V

    .line 95
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/PanoramaUI;->mController:Lcom/android/camera/PanoramaController;

    invoke-interface {v0}, Lcom/android/camera/PanoramaController;->onPreviewUIDestroyed()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 100
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 109
    return-void
.end method

.method public abstract pregressControl(Z)V
.end method

.method public abstract releasePanoView()V
.end method

.method public abstract setErrorCode(IZ)V
.end method

.method public abstract setOrientation(IZ)V
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public abstract showButtonWhenPanoStop()V
.end method

.method public abstract showFailMessage(II)V
.end method

.method public showShutterButton(Z)V
    .locals 2
    .param p1, "ifShow"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/PanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f0202ae

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToPanoStop(IZ)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/PanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 124
    return-void
.end method

.method public abstract showUIWhenPanoStop()V
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 2
    .param p1, "aspectRatio"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 143
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 147
    div-float p1, v1, p1

    .line 150
    :cond_2
    iget v0, p0, Lcom/android/camera/PanoramaUI;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 151
    iput p1, p0, Lcom/android/camera/PanoramaUI;->mAspectRatio:F

    .line 153
    iget-object v0, p0, Lcom/android/camera/PanoramaUI;->mController:Lcom/android/camera/PanoramaController;

    iget v1, p0, Lcom/android/camera/PanoramaUI;->mAspectRatio:F

    invoke-interface {v0, v1}, Lcom/android/camera/PanoramaController;->updatePreviewAspectRatio(F)V

    goto :goto_0
.end method
