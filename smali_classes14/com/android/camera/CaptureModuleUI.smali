.class public Lcom/android/camera/CaptureModuleUI;
.super Ljava/lang/Object;
.source "CaptureModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private mBeautyLevel:I

.field private mControlBar:Landroid/widget/LinearLayout;

.field private mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

.field private mControlSeekBar:Landroid/widget/SeekBar;

.field private mConverter:Lcom/android/camera/face/Camera2FaceConverter;

.field private mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mInitializeFirstTime:Z

.field private mIsBeautyShow:Z

.field private final mListener:Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;

.field private mMaxZoom:F

.field private final mModuleRoot:Landroid/view/View;

.field private mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

.field private mOrientation:I

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final mPreviewView:Landroid/view/TextureView;

.field private final mRootView:Landroid/view/View;

.field private final mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CaptureModuleUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/CaptureModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/view/View;Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;IZ)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;
    .param p4, "level"    # I
    .param p5, "isBeautyShow"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v1, p0, Lcom/android/camera/CaptureModuleUI;->mMaxZoom:F

    .line 76
    iput v1, p0, Lcom/android/camera/CaptureModuleUI;->mZoomValue:F

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CaptureModuleUI;->mInitializeFirstTime:Z

    .line 91
    new-instance v1, Lcom/android/camera/CaptureModuleUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModuleUI$1;-><init>(Lcom/android/camera/CaptureModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 122
    iput-object p1, p0, Lcom/android/camera/CaptureModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 123
    iput-object p3, p0, Lcom/android/camera/CaptureModuleUI;->mListener:Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;

    .line 124
    iput-object p2, p0, Lcom/android/camera/CaptureModuleUI;->mRootView:Landroid/view/View;

    .line 125
    iput p4, p0, Lcom/android/camera/CaptureModuleUI;->mBeautyLevel:I

    .line 126
    iput-boolean p5, p0, Lcom/android/camera/CaptureModuleUI;->mIsBeautyShow:Z

    .line 128
    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 129
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mModuleRoot:Landroid/view/View;

    .line 131
    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewView:Landroid/view/TextureView;

    .line 133
    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 135
    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 137
    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 141
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/CaptureModuleUI;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;
    .param p1, "x1"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/android/camera/CaptureModuleUI;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mListener:Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/CaptureModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/CaptureModuleUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/CaptureModuleUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/CaptureModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/CaptureModuleUI;->mBeautyLevel:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/CaptureModuleUI;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModuleUI;->initBeautyControl(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/CaptureModuleUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/CaptureModuleUI;->mIsBeautyShow:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/CaptureModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/CaptureModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/CaptureModuleUI;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/CaptureModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/CaptureModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/CaptureModuleUI;Lcom/android/camera/ui/RotateLayout;)Lcom/android/camera/ui/RotateLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/RotateLayout;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/CaptureModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/camera/CaptureModuleUI;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModuleUI;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/CaptureModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    return-object p1
.end method

.method private initBeautyControl(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 175
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getBottomBarHeightByDUT()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 176
    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    sget v2, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 179
    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 180
    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 181
    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/camera/CaptureModuleUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureModuleUI$3;-><init>(Lcom/android/camera/CaptureModuleUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 198
    return-void
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 260
    :cond_0
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 317
    :cond_0
    return-void
.end method

.method public getBitMapFromPreview()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 271
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 272
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/CaptureModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 273
    iget-object v2, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
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

.method public getBitMapFromPreview(I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 277
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 278
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/CaptureModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 279
    int-to-float v2, p1

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 280
    iget-object v2, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
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
    .line 304
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getPreviewAreaHeight()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 205
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 216
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public initializeZoom(FFZZZ)V
    .locals 9
    .param p1, "maxZoom"    # F
    .param p2, "currentZoom"    # F
    .param p3, "forecToHide"    # Z
    .param p4, "useWideAndUltraWideMode"    # Z
    .param p5, "enableWideAndUltraWideMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 291
    iput p1, p0, Lcom/android/camera/CaptureModuleUI;->mMaxZoom:F

    .line 292
    iput p2, p0, Lcom/android/camera/CaptureModuleUI;->mZoomValue:F

    .line 293
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/CaptureModuleUI;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/CaptureModuleUI;->mMaxZoom:F

    iget-object v8, p0, Lcom/android/camera/CaptureModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move v2, p2

    move v4, v3

    move v5, p4

    move v6, p5

    move v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFIZZZZLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 298
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadModuleLayout()V
    .locals 4

    .prologue
    .line 144
    iget-boolean v1, p0, Lcom/android/camera/CaptureModuleUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CaptureModuleUI;->mInitializeFirstTime:Z

    .line 148
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f04002b

    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/CaptureModuleUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/CaptureModuleUI$2;-><init>(Lcom/android/camera/CaptureModuleUI;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/CaptureModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    invoke-virtual {v1, p1}, Lcom/android/camera/face/Camera2FaceConverter;->convertCamera2Face([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    goto :goto_0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    .line 362
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 368
    :cond_1
    return-void
.end method

.method public onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z
    .param p3, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 334
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 336
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 338
    new-instance v0, Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/CaptureModuleUI;->mZoomValue:F

    invoke-direct {v0, p3, p2, v1, p4}, Lcom/android/camera/face/Camera2FaceConverter;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 340
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 345
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 349
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 329
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 323
    :cond_0
    return-void
.end method

.method public setBeautyVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/camera/CaptureModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 245
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 246
    :cond_0
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 311
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 372
    iput p1, p0, Lcom/android/camera/CaptureModuleUI;->mOrientation:I

    .line 373
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 375
    :cond_1
    return-void
.end method

.method public setPictureTakingProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 268
    return-void
.end method

.method public setZoomEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay;->setZoomEnable(Z)V

    .line 302
    :cond_0
    return-void
.end method

.method public showDebugMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 225
    return-void
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    goto :goto_0
.end method
