.class public Lcom/android/camera/VideoHal3ModuleUI;
.super Ljava/lang/Object;
.source "VideoHal3ModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoHal3ModuleUI$VideoModuleUIListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mConverter:Lcom/android/camera/face/Camera2FaceConverter;

.field private mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mInitializeFirstTime:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private final mListener:Lcom/android/camera/VideoHal3ModuleUI$VideoModuleUIListener;

.field private mLiveBroadcastCount:Landroid/widget/TextView;

.field private mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

.field private mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

.field private mLiveBroadcastParent:Landroid/widget/FrameLayout;

.field private mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

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
    .line 71
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoHal3ModuleUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/VideoHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;Lcom/android/camera/VideoHal3ModuleUI$VideoModuleUIListener;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "appController"    # Lcom/android/camera/app/AppController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "listener"    # Lcom/android/camera/VideoHal3ModuleUI$VideoModuleUIListener;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mMaxZoom:F

    .line 89
    iput v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mZoomValue:F

    .line 93
    iput-boolean v2, p0, Lcom/android/camera/VideoHal3ModuleUI;->mInitializeFirstTime:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingStarted:Z

    .line 111
    new-instance v1, Lcom/android/camera/VideoHal3ModuleUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3ModuleUI$1;-><init>(Lcom/android/camera/VideoHal3ModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 142
    iput-object p1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 143
    iput-object p2, p0, Lcom/android/camera/VideoHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    .line 144
    iput-object p4, p0, Lcom/android/camera/VideoHal3ModuleUI;->mListener:Lcom/android/camera/VideoHal3ModuleUI$VideoModuleUIListener;

    .line 145
    iput-object p3, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    .line 147
    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 148
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    .line 150
    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    .line 152
    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 154
    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 156
    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 160
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/VideoHal3ModuleUI;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;
    .param p1, "x1"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/VideoHal3ModuleUI;)Lcom/android/camera/VideoHal3ModuleUI$VideoModuleUIListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mListener:Lcom/android/camera/VideoHal3ModuleUI$VideoModuleUIListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoHal3ModuleUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoHal3ModuleUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingStarted:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/VideoHal3ModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/VideoHal3ModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/VideoHal3ModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/VideoHal3ModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/VideoHal3ModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/VideoHal3ModuleUI;->initializeMiscControls()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/VideoHal3ModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/VideoHal3ModuleUI;->initLiveBroadcast()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/VideoHal3ModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/VideoHal3ModuleUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3ModuleUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method private initLiveBroadcast()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    .line 199
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    .line 200
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

    .line 201
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 203
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/camera/VideoHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

    .line 205
    return-void
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 194
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 195
    return-void
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 329
    :cond_0
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 378
    :cond_0
    return-void
.end method

.method public getBitMapFromPreview()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 340
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 341
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/VideoHal3ModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 342
    iget-object v2, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
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
    .line 365
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getPreviewAreaHeight()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 273
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 284
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public initializeZoom(FF)V
    .locals 3
    .param p1, "maxZoom"    # F
    .param p2, "currentZoom"    # F

    .prologue
    .line 353
    iput p1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mMaxZoom:F

    .line 354
    iput p2, p0, Lcom/android/camera/VideoHal3ModuleUI;->mZoomValue:F

    .line 355
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mMaxZoom:F

    iget-object v2, p0, Lcom/android/camera/VideoHal3ModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 359
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

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
    .line 163
    iget-boolean v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mInitializeFirstTime:Z

    .line 165
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f04009a

    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/VideoHal3ModuleUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoHal3ModuleUI$2;-><init>(Lcom/android/camera/VideoHal3ModuleUI;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-nez v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    invoke-virtual {v1, p1}, Lcom/android/camera/face/Camera2FaceConverter;->convertCamera2Face([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    goto :goto_0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    .line 423
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 429
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
    .line 393
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 395
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 397
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 399
    new-instance v0, Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mZoomValue:F

    invoke-direct {v0, p3, p2, v1, p4}, Lcom/android/camera/face/Camera2FaceConverter;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 401
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 406
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 410
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 390
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 384
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 314
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 315
    :cond_0
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 372
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 433
    iput p1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mOrientation:I

    .line 434
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_1

    .end local p1    # "orientation":I
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 437
    :cond_0
    return-void

    .line 435
    .restart local p1    # "orientation":I
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setPictureTakingProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 337
    return-void
.end method

.method public setRecordingTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    return-void
.end method

.method public setRecordingTimeWarning(Z)V
    .locals 3
    .param p1, "warning"    # Z

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/VideoHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz p1, :cond_0

    const v0, 0x7f0e00a4

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    return-void

    .line 444
    :cond_0
    const v0, 0x7f0e000f

    goto :goto_0
.end method

.method public setZoomEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay;->setZoomEnable(Z)V

    .line 363
    :cond_0
    return-void
.end method

.method public showDebugMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 293
    return-void
.end method

.method public showLiveBroadcastUI(ZI)V
    .locals 4
    .param p1, "broadcasting"    # Z
    .param p2, "orientation"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 221
    if-eqz p1, :cond_5

    .line 222
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 240
    :cond_4
    :goto_0
    return-void

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 235
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    .line 236
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 237
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method public showRecordingUI(Z)V
    .locals 3
    .param p1, "recording"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingStarted:Z

    .line 209
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 213
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_2

    const v0, 0x7f08028f

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 214
    if-nez p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    :cond_0
    return-void

    .line 211
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 213
    :cond_2
    const v0, 0x7f080290

    goto :goto_1
.end method

.method public startCountdown(II)V
    .locals 2
    .param p1, "sec"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 303
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    goto :goto_0
.end method

.method public updateLiveBroadcastAdapter(Lcom/android/camera/livebroadcast/status/CommentsAdapter;)V
    .locals 1
    .param p1, "commentsAdapter"    # Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 251
    :cond_0
    return-void
.end method

.method public updateLiveBroadcastIcon(Z)V
    .locals 2
    .param p1, "showed"    # Z

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public updateLiveBroadcastStatus(ILjava/util/List;Ljava/util/List;II)V
    .locals 9
    .param p1, "viewCount"    # I
    .param p4, "totalComments"    # I
    .param p5, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Reactions;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Comment;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "reactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/status/Reactions;>;"
    .local p3, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/status/Comment;>;"
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p4}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 260
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/android/camera/livebroadcast/status/ReactionView;->LIMIT_NUMBER:I

    if-le v0, v1, :cond_2

    sget v8, Lcom/android/camera/livebroadcast/status/ReactionView;->LIMIT_NUMBER:I

    .line 261
    .local v8, "size":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 262
    new-instance v0, Lcom/android/camera/livebroadcast/status/ReactionView;

    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoHal3ModuleUI;->mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

    .line 263
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/livebroadcast/status/Reactions;

    invoke-virtual {v3}, Lcom/android/camera/livebroadcast/status/Reactions;->getThumbnailURL()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/livebroadcast/status/Reactions;

    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/status/Reactions;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 264
    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/livebroadcast/status/ReactionView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;I)V

    .line 261
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 260
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    .line 267
    :cond_3
    return-void
.end method
