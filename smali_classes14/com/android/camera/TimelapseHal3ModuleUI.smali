.class public Lcom/android/camera/TimelapseHal3ModuleUI;
.super Ljava/lang/Object;
.source "TimelapseHal3ModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/TimelapseHal3ModuleUI$VideoModuleUIListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mConverter:Lcom/android/camera/face/Camera2FaceConverter;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mInitializeFirstTime:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private final mListener:Lcom/android/camera/TimelapseHal3ModuleUI$VideoModuleUIListener;

.field private mMaxZoom:F

.field private final mModuleRoot:Landroid/view/View;

.field private mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

.field private mOrientation:I

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final mPreviewView:Landroid/view/TextureView;

.field private mRecordingStarted:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private final mRootView:Landroid/view/View;

.field private final mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TLHal3ModuleUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TimelapseHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;Lcom/android/camera/TimelapseHal3ModuleUI$VideoModuleUIListener;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "appController"    # Lcom/android/camera/app/AppController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "listener"    # Lcom/android/camera/TimelapseHal3ModuleUI$VideoModuleUIListener;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mMaxZoom:F

    .line 73
    iput v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mZoomValue:F

    .line 77
    iput-boolean v2, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mInitializeFirstTime:Z

    .line 78
    iput-boolean v2, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingStarted:Z

    .line 88
    new-instance v1, Lcom/android/camera/TimelapseHal3ModuleUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/TimelapseHal3ModuleUI$1;-><init>(Lcom/android/camera/TimelapseHal3ModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 119
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 120
    iput-object p2, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    .line 121
    iput-object p4, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mListener:Lcom/android/camera/TimelapseHal3ModuleUI$VideoModuleUIListener;

    .line 122
    iput-object p3, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRootView:Landroid/view/View;

    .line 124
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 125
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    .line 127
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    .line 129
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 131
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 133
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 137
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/TimelapseHal3ModuleUI;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3ModuleUI;
    .param p1, "x1"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/TimelapseHal3ModuleUI;)Lcom/android/camera/TimelapseHal3ModuleUI$VideoModuleUIListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3ModuleUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mListener:Lcom/android/camera/TimelapseHal3ModuleUI$VideoModuleUIListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/TimelapseHal3ModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3ModuleUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/TimelapseHal3ModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3ModuleUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/TimelapseHal3ModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3ModuleUI;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3ModuleUI;->initializeMiscControls()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/TimelapseHal3ModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3ModuleUI;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/TimelapseHal3ModuleUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3ModuleUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/TimelapseHal3ModuleUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3ModuleUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/TimelapseHal3ModuleUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3ModuleUI;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingStarted:Z

    return v0
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 166
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 167
    return-void
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 279
    :cond_0
    return-void
.end method

.method public getBitMapFromPreview()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 244
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 245
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/TimelapseHal3ModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 246
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    .local v0, "src":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getPreviewAreaHeight()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewAreaWidth()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public initializeZoom(FF)V
    .locals 3
    .param p1, "maxZoom"    # F
    .param p2, "currentZoom"    # F

    .prologue
    .line 257
    iput p1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mMaxZoom:F

    .line 258
    iput p2, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mZoomValue:F

    .line 259
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mMaxZoom:F

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 263
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public loadModuleLayout()V
    .locals 4

    .prologue
    .line 140
    iget-boolean v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mInitializeFirstTime:Z

    .line 142
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f040093

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/TimelapseHal3ModuleUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/TimelapseHal3ModuleUI$2;-><init>(Lcom/android/camera/TimelapseHal3ModuleUI;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    invoke-virtual {v1, p1}, Lcom/android/camera/face/Camera2FaceConverter;->convertCamera2Face([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    goto :goto_0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    .line 324
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 327
    :cond_0
    return-void
.end method

.method public onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z
    .param p3, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 296
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 298
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 300
    new-instance v0, Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mZoomValue:F

    invoke-direct {v0, p3, p2, v1, p4}, Lcom/android/camera/face/Camera2FaceConverter;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 302
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 307
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 311
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 291
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 285
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 220
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 273
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 331
    iput p1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mOrientation:I

    .line 332
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_1

    .end local p1    # "orientation":I
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 335
    :cond_0
    return-void

    .line 333
    .restart local p1    # "orientation":I
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setPictureTakingProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 241
    return-void
.end method

.method public setRecordingTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    return-void
.end method

.method public setRecordingTimeWarning(Z)V
    .locals 3
    .param p1, "warning"    # Z

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz p1, :cond_0

    const v0, 0x7f0e00a4

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    return-void

    .line 342
    :cond_0
    const v0, 0x7f0e000f

    goto :goto_0
.end method

.method public showDebugMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 206
    return-void
.end method

.method public showRecordingUI(Z)V
    .locals 3
    .param p1, "recording"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingStarted:Z

    .line 171
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 175
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_2

    const v0, 0x7f08028f

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 176
    if-nez p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    :cond_0
    return-void

    .line 173
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 175
    :cond_2
    const v0, 0x7f080290

    goto :goto_1
.end method

.method public startCountdown(I)V
    .locals 0
    .param p1, "sec"    # I

    .prologue
    .line 214
    return-void
.end method
