.class public Lcom/android/camera/BeautyHal3ModuleUI;
.super Ljava/lang/Object;
.source "BeautyHal3ModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mControlBar:Landroid/widget/LinearLayout;

.field private mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

.field private mControlSeekBar:Landroid/widget/SeekBar;

.field private mConverter:Lcom/android/camera/face/Camera2FaceConverter;

.field private mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mInitializeFirstTime:Z

.field private final mListener:Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;

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
    .line 65
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BeautyHal3ModuleUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/BeautyHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "appController"    # Lcom/android/camera/app/AppController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "listener"    # Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mMaxZoom:F

    .line 82
    iput v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mZoomValue:F

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mInitializeFirstTime:Z

    .line 96
    new-instance v1, Lcom/android/camera/BeautyHal3ModuleUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyHal3ModuleUI$1;-><init>(Lcom/android/camera/BeautyHal3ModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 127
    iput-object p1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 128
    iput-object p2, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    .line 129
    iput-object p4, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mListener:Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;

    .line 130
    iput-object p3, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mRootView:Landroid/view/View;

    .line 132
    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 133
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    .line 135
    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    .line 137
    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 139
    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 141
    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 145
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/BeautyHal3ModuleUI;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;
    .param p1, "x1"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mListener:Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/BeautyHal3ModuleUI;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/BeautyHal3ModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3ModuleUI;->initBeautyControl()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/BeautyHal3ModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/BeautyHal3ModuleUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/BeautyHal3ModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/BeautyHal3ModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/BeautyHal3ModuleUI;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/BeautyHal3ModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/BeautyHal3ModuleUI;Lcom/android/camera/ui/RotateLayout;)Lcom/android/camera/ui/RotateLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3ModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/RotateLayout;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    return-object p1
.end method

.method private initBeautyControl()V
    .locals 7

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_beauty_level_key"

    iget-object v5, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f08035f

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 150
    .local v0, "beautyLevel":I
    iget-object v2, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->is18x9Layout()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f090034

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 152
    iget-object v2, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v2, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    sget v3, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 155
    iget-object v2, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 156
    iget-object v2, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    const/4 v3, -0x1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 157
    iget-object v2, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/camera/BeautyHal3ModuleUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/BeautyHal3ModuleUI$2;-><init>(Lcom/android/camera/BeautyHal3ModuleUI;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 173
    return-void

    .line 151
    :cond_0
    const v2, 0x7f090033

    goto :goto_0
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 264
    :cond_0
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 310
    :cond_0
    return-void
.end method

.method public getBitMapFromPreview()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 275
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 276
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/BeautyHal3ModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 277
    iget-object v2, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
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
    .line 297
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getPreviewAreaHeight()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 209
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 220
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public initializeZoom(FF)V
    .locals 3
    .param p1, "maxZoom"    # F
    .param p2, "currentZoom"    # F

    .prologue
    .line 288
    iput p1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mMaxZoom:F

    .line 289
    iput p2, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mZoomValue:F

    .line 290
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mMaxZoom:F

    iget-object v2, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 294
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

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
    .line 176
    iget-boolean v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mInitializeFirstTime:Z

    .line 178
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f040022

    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/BeautyHal3ModuleUI$3;

    invoke-direct {v3, p0}, Lcom/android/camera/BeautyHal3ModuleUI$3;-><init>(Lcom/android/camera/BeautyHal3ModuleUI;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-nez v0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    invoke-virtual {v1, p1}, Lcom/android/camera/face/Camera2FaceConverter;->convertCamera2Face([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    goto :goto_0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    .line 355
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 361
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
    .line 325
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 327
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 329
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 331
    new-instance v0, Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mZoomValue:F

    invoke-direct {v0, p3, p2, v1, p4}, Lcom/android/camera/face/Camera2FaceConverter;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 333
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 338
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 342
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 322
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 316
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 249
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 250
    :cond_0
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 304
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 365
    iput p1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mOrientation:I

    .line 366
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    iget v1, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mOrientation:I

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 368
    :cond_1
    return-void
.end method

.method public setPictureTakingProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 272
    return-void
.end method

.method public showDebugMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 229
    return-void
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    goto :goto_0
.end method
