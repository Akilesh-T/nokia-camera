.class public Lcom/android/camera/SquareModuleUI;
.super Ljava/lang/Object;
.source "SquareModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;
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

.field private final mListener:Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;

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
    .line 60
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SquareModuleUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SquareModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/view/View;Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;IZ)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;
    .param p4, "level"    # I
    .param p5, "isBeautyShow"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v1, p0, Lcom/android/camera/SquareModuleUI;->mMaxZoom:F

    .line 76
    iput v1, p0, Lcom/android/camera/SquareModuleUI;->mZoomValue:F

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/SquareModuleUI;->mInitializeFirstTime:Z

    .line 91
    new-instance v1, Lcom/android/camera/SquareModuleUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/SquareModuleUI$1;-><init>(Lcom/android/camera/SquareModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/SquareModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 122
    iput-object p1, p0, Lcom/android/camera/SquareModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 123
    iput-object p3, p0, Lcom/android/camera/SquareModuleUI;->mListener:Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;

    .line 124
    iput-object p2, p0, Lcom/android/camera/SquareModuleUI;->mRootView:Landroid/view/View;

    .line 125
    iput p4, p0, Lcom/android/camera/SquareModuleUI;->mBeautyLevel:I

    .line 126
    iput-boolean p5, p0, Lcom/android/camera/SquareModuleUI;->mIsBeautyShow:Z

    .line 128
    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 129
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/SquareModuleUI;->mModuleRoot:Landroid/view/View;

    .line 131
    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/camera/SquareModuleUI;->mPreviewView:Landroid/view/TextureView;

    .line 133
    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/SquareModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 135
    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/SquareModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 137
    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 141
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/SquareModuleUI;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;
    .param p1, "x1"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/android/camera/SquareModuleUI;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/SquareModuleUI;)Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mListener:Lcom/android/camera/SquareModuleUI$SquareModuleUIListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/SquareModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/SquareModuleUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/SquareModuleUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/SquareModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/SquareModuleUI;->mBeautyLevel:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/SquareModuleUI;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/SquareModuleUI;->initBeautyControl(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/SquareModuleUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/camera/SquareModuleUI;->mIsBeautyShow:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/SquareModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/SquareModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/SquareModuleUI;)Lcom/android/camera/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/SquareModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/SquareModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/SquareModuleUI;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/SquareModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/SquareModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/SquareModuleUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/SquareModuleUI;Lcom/android/camera/ui/RotateLayout;)Lcom/android/camera/ui/RotateLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/RotateLayout;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/SquareModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/camera/SquareModuleUI;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SquareModuleUI;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/SquareModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    return-object p1
.end method

.method private initBeautyControl(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getBottomBarHeightByDUT()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 174
    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    sget v2, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 177
    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 178
    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 179
    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/camera/SquareModuleUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/SquareModuleUI$3;-><init>(Lcom/android/camera/SquareModuleUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 196
    return-void
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 258
    :cond_0
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 315
    :cond_0
    return-void
.end method

.method public getBitMapFromPreview()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 269
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 270
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/SquareModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 271
    iget-object v2, p0, Lcom/android/camera/SquareModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
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

    .line 276
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 277
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/SquareModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 278
    int-to-float v2, p1

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 279
    iget-object v2, p0, Lcom/android/camera/SquareModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
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
    .line 302
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getPreviewAreaHeight()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 203
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 214
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public initializeZoom(FF)V
    .locals 3
    .param p1, "maxZoom"    # F
    .param p2, "currentZoom"    # F

    .prologue
    .line 290
    iput p1, p0, Lcom/android/camera/SquareModuleUI;->mMaxZoom:F

    .line 291
    iput p2, p0, Lcom/android/camera/SquareModuleUI;->mZoomValue:F

    .line 292
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/SquareModuleUI;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/SquareModuleUI;->mMaxZoom:F

    iget-object v2, p0, Lcom/android/camera/SquareModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 296
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

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
    iget-boolean v1, p0, Lcom/android/camera/SquareModuleUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/SquareModuleUI;->mInitializeFirstTime:Z

    .line 146
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f04008c

    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/SquareModuleUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/SquareModuleUI$2;-><init>(Lcom/android/camera/SquareModuleUI;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/SquareModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    invoke-virtual {v1, p1}, Lcom/android/camera/face/Camera2FaceConverter;->convertCamera2Face([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    goto :goto_0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/camera/SquareModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    .line 360
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 366
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
    .line 330
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 332
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 334
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 336
    new-instance v0, Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/SquareModuleUI;->mZoomValue:F

    invoke-direct {v0, p3, p2, v1, p4}, Lcom/android/camera/face/Camera2FaceConverter;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/SquareModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 338
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 343
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SquareModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 347
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 327
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 321
    :cond_0
    return-void
.end method

.method public setBeautyVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/camera/SquareModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 243
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 244
    :cond_0
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 309
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 370
    iput p1, p0, Lcom/android/camera/SquareModuleUI;->mOrientation:I

    .line 371
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 373
    :cond_1
    return-void
.end method

.method public setPictureTakingProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 266
    return-void
.end method

.method public setZoomEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay;->setZoomEnable(Z)V

    .line 300
    :cond_0
    return-void
.end method

.method public showDebugMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 223
    return-void
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    goto :goto_0
.end method
