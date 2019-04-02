.class public Lcom/android/camera/TextureViewHelper;
.super Ljava/lang/Object;
.source "TextureViewHelper.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final MATCH_SCREEN:F = 0.0f

.field public static final NEED_CROP_BITMAP:Z = false

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UNSET:I = -0x1


# instance fields
.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mAspectRatio:F

.field private final mAspectRatioChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoAdjustTransform:Z

.field private final mCameraModeId:I

.field private final mCameraProvider:Lcom/android/camera/app/CameraProvider;

.field private final mCaptureIntentModeId:I

.field private mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

.field private mHeight:I

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOrientation:I

.field private final mPreview:Landroid/view/TextureView;

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewSizeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TexViewHelper"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TextureViewHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lcom/android/camera/CaptureLayoutHelper;Lcom/android/camera/app/CameraProvider;Lcom/android/camera/app/AppController;)V
    .locals 2
    .param p1, "preview"    # Landroid/view/TextureView;
    .param p2, "helper"    # Lcom/android/camera/CaptureLayoutHelper;
    .param p3, "cameraProvider"    # Lcom/android/camera/app/CameraProvider;
    .param p4, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    .line 55
    iput v0, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatio:F

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/TextureViewHelper;->mAutoAdjustTransform:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatioChangedListeners:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    .line 68
    iput-object v1, p0, Lcom/android/camera/TextureViewHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 69
    iput-object v1, p0, Lcom/android/camera/TextureViewHelper;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/TextureViewHelper;->mOrientation:I

    .line 79
    iput-object p1, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    .line 80
    iput-object p3, p0, Lcom/android/camera/TextureViewHelper;->mCameraProvider:Lcom/android/camera/app/CameraProvider;

    .line 82
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 83
    iput-object p2, p0, Lcom/android/camera/TextureViewHelper;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 84
    iput-object p4, p0, Lcom/android/camera/TextureViewHelper;->mAppController:Lcom/android/camera/app/AppController;

    .line 85
    invoke-interface {p4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/TextureViewHelper;->mCameraModeId:I

    .line 87
    invoke-interface {p4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/TextureViewHelper;->mCaptureIntentModeId:I

    .line 89
    return-void
.end method

.method private onAspectRatioChanged()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/camera/TextureViewHelper;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    iget v2, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatio:F

    invoke-virtual {v1, v2}, Lcom/android/camera/CaptureLayoutHelper;->onPreviewAspectRatioChanged(F)V

    .line 160
    iget-object v1, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatioChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;

    .line 161
    .local v0, "listener":Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;
    iget v2, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatio:F

    invoke-interface {v0, v2}, Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;->onPreviewAspectRatioChanged(F)V

    goto :goto_0

    .line 163
    .end local v0    # "listener":Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;
    :cond_0
    return-void
.end method

.method private onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 381
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 386
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;>;"
    iget-object v1, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    new-instance v2, Lcom/android/camera/TextureViewHelper$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/TextureViewHelper$1;-><init>(Lcom/android/camera/TextureViewHelper;Ljava/util/List;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method

.method private setAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .prologue
    .line 149
    sget-object v0, Lcom/android/camera/TextureViewHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAspectRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget v0, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/android/camera/TextureViewHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aspect ratio changed from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iput p1, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatio:F

    .line 153
    invoke-direct {p0}, Lcom/android/camera/TextureViewHelper;->onAspectRatioChanged()V

    .line 155
    :cond_0
    return-void
.end method

.method private updatePreviewArea(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 233
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 235
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/camera/TextureViewHelper;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 236
    return-void
.end method

.method private updateTransform()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 331
    sget-object v6, Lcom/android/camera/TextureViewHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "updateTransform"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    iget-boolean v6, p0, Lcom/android/camera/TextureViewHelper;->mAutoAdjustTransform:Z

    if-nez v6, :cond_1

    .line 333
    const/4 v5, 0x0

    .line 376
    :cond_0
    :goto_0
    return v5

    .line 336
    :cond_1
    iget v6, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatio:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatio:F

    cmpg-float v6, v6, v10

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    if-eqz v6, :cond_0

    .line 340
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 341
    .local v4, "matrix":Landroid/graphics/Matrix;
    iget-object v6, p0, Lcom/android/camera/TextureViewHelper;->mCameraProvider:Lcom/android/camera/app/CameraProvider;

    invoke-interface {v6}, Lcom/android/camera/app/CameraProvider;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    .line 342
    .local v1, "cameraKey":Lcom/android/camera/device/CameraId;
    const/4 v0, -0x1

    .line 345
    .local v0, "cameraId":I
    :try_start_0
    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 357
    :goto_1
    sget-boolean v6, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/TextureViewHelper;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->isUsingCaptureModule()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/TextureViewHelper;->mAppController:Lcom/android/camera/app/AppController;

    .line 358
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v6

    iget v7, p0, Lcom/android/camera/TextureViewHelper;->mCameraModeId:I

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/camera/TextureViewHelper;->mAppController:Lcom/android/camera/app/AppController;

    .line 359
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v6

    iget v7, p0, Lcom/android/camera/TextureViewHelper;->mCaptureIntentModeId:I

    if-ne v6, v7, :cond_4

    .line 360
    :cond_2
    sget-object v6, Lcom/android/camera/TextureViewHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "Applying Photo Mode, Capture Module, Nexus-4 specific fix for b/19271661"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v6

    iput v6, p0, Lcom/android/camera/TextureViewHelper;->mOrientation:I

    .line 362
    iget v6, p0, Lcom/android/camera/TextureViewHelper;->mOrientation:I

    new-instance v7, Landroid/graphics/RectF;

    iget v8, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    int-to-float v9, v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v8, p0, Lcom/android/camera/TextureViewHelper;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 364
    invoke-virtual {v8}, Lcom/android/camera/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 362
    invoke-virtual {p0, v6, v7, v8}, Lcom/android/camera/TextureViewHelper;->getPreviewRotationalTransform(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v4

    .line 374
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v6, v4}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 375
    invoke-direct {p0, v4}, Lcom/android/camera/TextureViewHelper;->updatePreviewArea(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "ignored":Ljava/lang/UnsupportedOperationException;
    sget-object v6, Lcom/android/camera/TextureViewHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "TransformViewHelper does not support Camera API2"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 365
    .end local v2    # "ignored":Ljava/lang/UnsupportedOperationException;
    :cond_4
    if-ltz v0, :cond_3

    .line 367
    iget-object v6, p0, Lcom/android/camera/TextureViewHelper;->mCameraProvider:Lcom/android/camera/app/CameraProvider;

    invoke-interface {v6, v0}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v3

    .line 368
    .local v3, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget v6, p0, Lcom/android/camera/TextureViewHelper;->mOrientation:I

    new-instance v7, Landroid/graphics/RectF;

    iget v8, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    int-to-float v9, v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v8, p0, Lcom/android/camera/TextureViewHelper;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 369
    invoke-virtual {v8}, Lcom/android/camera/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 368
    invoke-virtual {v3, v6, v7, v8}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewTransform(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method public addAspectRatioChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;

    .prologue
    .line 167
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatioChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatioChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    return-void
.end method

.method public addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .prologue
    const/4 v3, 0x0

    .line 528
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 531
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, v0}, Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 536
    :cond_1
    :goto_0
    return-void

    .line 533
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {p1, v0}, Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public clearTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/camera/TextureViewHelper;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 132
    invoke-direct {p0, v3}, Lcom/android/camera/TextureViewHelper;->setAspectRatio(F)V

    .line 133
    return-void
.end method

.method public getBitMapFromPreview(I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "orientation"    # I

    .prologue
    .line 485
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 486
    .local v5, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    .local v0, "preview":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 498
    .local v8, "res":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v1, v5}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 499
    int-to-float v1, p1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 500
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 501
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    const/4 v0, 0x0

    .line 507
    :goto_0
    return-object v8

    .line 504
    :catch_0
    move-exception v7

    .line 505
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFullscreenRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v0}, Lcom/android/camera/CaptureLayoutHelper;->getFullscreenRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getOriPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "downsample"    # I

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/camera/TextureViewHelper;->getTextureArea()Landroid/graphics/RectF;

    move-result-object v2

    .line 457
    .local v2, "previewArea":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 475
    .local v3, "res":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    div-int v4, v5, p1

    .line 476
    .local v4, "width":I
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    div-int v1, v5, p1

    .line 477
    .local v1, "height":I
    iget-object v5, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v5, v4, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 482
    .end local v1    # "height":I
    .end local v4    # "width":I
    :goto_0
    return-object v3

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPreviewArea()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 401
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "downsample"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/android/camera/TextureViewHelper;->getTextureArea()Landroid/graphics/RectF;

    move-result-object v7

    .line 422
    .local v7, "previewArea":Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 423
    :cond_0
    sget-object v1, Lcom/android/camera/TextureViewHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreviewFrame fail : textureArea = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move-object v8, v2

    .line 451
    :cond_1
    :goto_0
    return-object v8

    .line 426
    :cond_2
    const/4 v8, 0x0

    .line 442
    .local v8, "res":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    div-int v3, v5, p1

    .line 443
    .local v3, "width":I
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    div-int v4, v5, p1

    .line 444
    .local v4, "height":I
    iget-object v5, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v5, v3, v4}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 445
    .local v0, "preview":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v5, v2}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 446
    if-eq v8, v0, :cond_1

    .line 447
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public getPreviewRotationalTransform(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 10
    .param p1, "currentDisplayOrientation"    # I
    .param p2, "surfaceDimensions"    # Landroid/graphics/RectF;
    .param p3, "desiredBounds"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 273
    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 313
    :goto_0
    return-object v3

    .line 277
    :cond_0
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 278
    .local v3, "transform":Landroid/graphics/Matrix;
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, p2, p3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 280
    move-object v1, p2

    .line 282
    .local v1, "normalRect":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v9

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    .line 283
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v9

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v9

    sub-float/2addr v5, v6

    .line 284
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v9

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    .line 285
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v9

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 288
    .local v2, "rotatedRect":Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->from(I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    .line 294
    .local v0, "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    sget-object v4, Lcom/android/camera/TextureViewHelper$2;->$SwitchMap$com$android$camera$app$OrientationManager$DeviceOrientation:[I

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 309
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v1, p3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 296
    :pswitch_0
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v2, p3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 297
    const/high16 v4, 0x43870000    # 270.0f

    iget v5, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_0

    .line 300
    :pswitch_1
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v1, p3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 301
    const/high16 v4, 0x43340000    # 180.0f

    iget v5, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_0

    .line 304
    :pswitch_2
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v2, p3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 305
    const/high16 v4, 0x42b40000    # 90.0f

    iget v5, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTextureArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 410
    iget-object v2, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    if-nez v2, :cond_0

    .line 411
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 416
    :goto_0
    return-object v0

    .line 413
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 414
    .local v1, "matrix":Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 415
    .local v0, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 13
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
    .line 105
    sget-object v0, Lcom/android/camera/TextureViewHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onLayoutChange"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    sub-int v12, p4, p2

    .line 107
    .local v12, "width":I
    sub-int v10, p5, p3

    .line 108
    .local v10, "height":I
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v11

    .line 109
    .local v11, "rotation":I
    iget v0, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    if-ne v0, v12, :cond_0

    iget v0, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    if-ne v0, v10, :cond_0

    iget v0, p0, Lcom/android/camera/TextureViewHelper;->mOrientation:I

    if-eq v0, v11, :cond_1

    .line 110
    :cond_0
    iput v12, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    .line 111
    iput v10, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    .line 112
    iput v11, p0, Lcom/android/camera/TextureViewHelper;->mOrientation:I

    .line 113
    invoke-direct {p0}, Lcom/android/camera/TextureViewHelper;->updateTransform()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/camera/TextureViewHelper;->clearTransform()V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 121
    :cond_2
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 553
    iget v0, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    if-eqz v0, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/android/camera/TextureViewHelper;->updateTransform()Z

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 560
    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 574
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 567
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 582
    :cond_0
    return-void
.end method

.method public removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .prologue
    .line 545
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewSizeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 548
    :cond_0
    return-void
.end method

.method public setAutoAdjustTransform(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/camera/TextureViewHelper;->mAutoAdjustTransform:Z

    .line 100
    return-void
.end method

.method public setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/camera/TextureViewHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 240
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/camera/TextureViewHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 244
    return-void
.end method

.method public updateAspectRatio(F)V
    .locals 4
    .param p1, "aspectRatio"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 136
    sget-object v0, Lcom/android/camera/TextureViewHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAspectRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 138
    sget-object v0, Lcom/android/camera/TextureViewHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    .line 142
    div-float p1, v3, p1

    .line 144
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/TextureViewHelper;->setAspectRatio(F)V

    .line 145
    invoke-direct {p0}, Lcom/android/camera/TextureViewHelper;->updateTransform()Z

    goto :goto_0
.end method

.method public updateTransform(Landroid/graphics/Matrix;)V
    .locals 11
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 202
    new-instance v4, Landroid/graphics/RectF;

    iget v6, p0, Lcom/android/camera/TextureViewHelper;->mWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/TextureViewHelper;->mHeight:I

    int-to-float v7, v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 203
    .local v4, "previewRect":Landroid/graphics/RectF;
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 205
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 206
    .local v5, "previewWidth":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 207
    .local v3, "previewHeight":F
    sget-object v6, Lcom/android/camera/TextureViewHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateTransform previewRect width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_0

    cmpl-float v6, v3, v9

    if-eqz v6, :cond_0

    cmpl-float v6, v5, v9

    if-nez v6, :cond_1

    .line 210
    :cond_0
    sget-object v6, Lcom/android/camera/TextureViewHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid preview size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 213
    :cond_1
    div-float v1, v5, v3

    .line 214
    .local v1, "aspectRatio":F
    cmpg-float v6, v1, v10

    if-gez v6, :cond_2

    div-float v1, v10, v1

    .line 215
    :cond_2
    iget v6, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatio:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_3

    .line 216
    invoke-direct {p0, v1}, Lcom/android/camera/TextureViewHelper;->setAspectRatio(F)V

    .line 219
    :cond_3
    iget-object v6, p0, Lcom/android/camera/TextureViewHelper;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v6}, Lcom/android/camera/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 220
    .local v2, "previewAreaBasedOnAspectRatio":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 221
    .local v0, "addtionalTransform":Landroid/graphics/Matrix;
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 223
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 224
    iget-object v6, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v6, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/android/camera/TextureViewHelper;->updatePreviewArea(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public updateTransformFullScreen(Landroid/graphics/Matrix;F)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "aspectRatio"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 190
    cmpg-float v0, p2, v1

    if-gez v0, :cond_0

    div-float p2, v1, p2

    .line 191
    :cond_0
    iget v0, p0, Lcom/android/camera/TextureViewHelper;->mAspectRatio:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0, p2}, Lcom/android/camera/TextureViewHelper;->setAspectRatio(F)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v0}, Lcom/android/camera/CaptureLayoutHelper;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    .line 197
    iget-object v0, p0, Lcom/android/camera/TextureViewHelper;->mPreviewArea:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/camera/TextureViewHelper;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 199
    return-void
.end method
