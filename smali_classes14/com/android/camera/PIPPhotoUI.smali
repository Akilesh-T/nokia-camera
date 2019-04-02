.class public Lcom/android/camera/PIPPhotoUI;
.super Ljava/lang/Object;
.source "PIPPhotoUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UNSET:F


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private mAspectRatio:F

.field private final mController:Lcom/android/camera/PIPPhotoController;

.field private final mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mOrientation:I

.field private final mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mPreviewHeight:I

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final mPreviewTouchListener:Landroid/view/View$OnTouchListener;

.field private mPreviewWidth:I

.field private final mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PIPPhotoUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PIPPhotoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PIPPhotoController;Landroid/view/View;I)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/PIPPhotoController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "orientation"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v1, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewWidth:I

    .line 60
    iput v1, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewHeight:I

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/PIPPhotoUI;->mAspectRatio:F

    .line 65
    new-instance v1, Lcom/android/camera/PIPPhotoUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PIPPhotoUI$1;-><init>(Lcom/android/camera/PIPPhotoUI;)V

    iput-object v1, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 83
    new-instance v1, Lcom/android/camera/PIPPhotoUI$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PIPPhotoUI$2;-><init>(Lcom/android/camera/PIPPhotoUI;)V

    iput-object v1, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewTouchListener:Landroid/view/View$OnTouchListener;

    .line 176
    iput-object p1, p0, Lcom/android/camera/PIPPhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 177
    iput-object p2, p0, Lcom/android/camera/PIPPhotoUI;->mController:Lcom/android/camera/PIPPhotoController;

    .line 178
    iput-object p3, p0, Lcom/android/camera/PIPPhotoUI;->mRootView:Landroid/view/View;

    .line 180
    iget-object v1, p0, Lcom/android/camera/PIPPhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 181
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/PIPPhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040079

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 182
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoUI;->initIndicators()V

    .line 183
    iget-object v1, p0, Lcom/android/camera/PIPPhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/PIPPhotoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 184
    iget-object v1, p0, Lcom/android/camera/PIPPhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 185
    iget-object v1, p0, Lcom/android/camera/PIPPhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CountDownView;

    iput-object v1, p0, Lcom/android/camera/PIPPhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    .line 187
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PIPPhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 193
    iput p4, p0, Lcom/android/camera/PIPPhotoUI;->mOrientation:I

    .line 194
    invoke-virtual {p0, p4, v3}, Lcom/android/camera/PIPPhotoUI;->setOrientation(IZ)V

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PIPPhotoUI;)Lcom/android/camera/PIPPhotoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoUI;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mController:Lcom/android/camera/PIPPhotoController;

    return-object v0
.end method

.method private initIndicators()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method


# virtual methods
.method public animateFlash()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mController:Lcom/android/camera/PIPPhotoController;

    invoke-interface {v0}, Lcom/android/camera/PIPPhotoController;->startPreCaptureAnimation()V

    .line 250
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 165
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 283
    :cond_0
    return-void
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    return v0
.end method

.method public lockZoom()V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 246
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mController:Lcom/android/camera/PIPPhotoController;

    invoke-interface {v0}, Lcom/android/camera/PIPPhotoController;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 313
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PIPPhotoUI;->mAspectRatio:F

    .line 277
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 173
    return-void
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mController:Lcom/android/camera/PIPPhotoController;

    invoke-interface {v0}, Lcom/android/camera/PIPPhotoController;->updateCameraOrientation()V

    .line 135
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
    .line 114
    sub-int v1, p4, p2

    .line 115
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 116
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewWidth:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewHeight:I

    if-eq v2, v0, :cond_1

    .line 117
    :cond_0
    iput v1, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewWidth:I

    .line 118
    iput v0, p0, Lcom/android/camera/PIPPhotoUI;->mPreviewHeight:I

    .line 120
    :cond_1
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 300
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 305
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mController:Lcom/android/camera/PIPPhotoController;

    invoke-interface {v0}, Lcom/android/camera/PIPPhotoController;->onPreviewUIReady()V

    .line 221
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mController:Lcom/android/camera/PIPPhotoController;

    invoke-interface {v0}, Lcom/android/camera/PIPPhotoController;->onPreviewUIDestroyed()V

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 226
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 236
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 289
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 295
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 151
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 317
    iput p1, p0, Lcom/android/camera/PIPPhotoUI;->mOrientation:I

    .line 318
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 319
    :cond_0
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 269
    return-void
.end method

.method public setViewVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 323
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 144
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 203
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 204
    sget-object v0, Lcom/android/camera/PIPPhotoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid aspect ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 208
    div-float p1, v1, p1

    .line 211
    :cond_2
    iget v0, p0, Lcom/android/camera/PIPPhotoUI;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 212
    iput p1, p0, Lcom/android/camera/PIPPhotoUI;->mAspectRatio:F

    .line 214
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI;->mController:Lcom/android/camera/PIPPhotoController;

    iget v1, p0, Lcom/android/camera/PIPPhotoUI;->mAspectRatio:F

    invoke-interface {v0, v1}, Lcom/android/camera/PIPPhotoController;->updatePreviewAspectRatio(F)V

    goto :goto_0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method
