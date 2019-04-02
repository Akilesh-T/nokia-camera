.class public Lcom/android/camera/DualSightVideoModuleUI;
.super Ljava/lang/Object;
.source "DualSightVideoModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mBottomEditModeMask:Landroid/view/View;

.field private mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mConverter:Lcom/android/camera/face/Camera2FaceConverter;

.field private mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private mEditModeContainer:Landroid/view/View;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mInitializeFirstTime:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

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

.field private mTopEditModeMask:Landroid/view/View;

.field private final mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "DualSightVideoModuleUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/DualSightVideoModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "appController"    # Lcom/android/camera/app/AppController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mMaxZoom:F

    .line 81
    iput v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mZoomValue:F

    .line 85
    iput-boolean v2, p0, Lcom/android/camera/DualSightVideoModuleUI;->mInitializeFirstTime:Z

    .line 86
    iput-boolean v2, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingStarted:Z

    .line 107
    new-instance v1, Lcom/android/camera/DualSightVideoModuleUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightVideoModuleUI$1;-><init>(Lcom/android/camera/DualSightVideoModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 127
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 128
    iput-object p2, p0, Lcom/android/camera/DualSightVideoModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    .line 129
    iput-object p3, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    .line 131
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 132
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mModuleRoot:Landroid/view/View;

    .line 134
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewView:Landroid/view/TextureView;

    .line 136
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 138
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 140
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/DualSightVideoModuleUI;)Lcom/android/camera/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModuleUI;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/DualSightVideoModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/DualSightVideoModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModuleUI;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/DualSightVideoModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModuleUI;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModuleUI;->initializeMiscControls()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/DualSightVideoModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModuleUI;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModuleUI;->initLiveBroadcast()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/DualSightVideoModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModuleUI;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModuleUI;->initEditModeControls()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/DualSightVideoModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModuleUI;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/DualSightVideoModuleUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModuleUI;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/DualSightVideoModuleUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModuleUI;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/DualSightVideoModuleUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModuleUI;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingStarted:Z

    return v0
.end method

.method private adjustMask(Landroid/view/View;I)V
    .locals 2
    .param p1, "maskView"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 213
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 214
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 217
    return-void
.end method

.method private calMaskLayout()V
    .locals 6

    .prologue
    .line 200
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModuleUI;->mEditModeContainer:Landroid/view/View;

    if-nez v3, :cond_0

    .line 209
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 204
    .local v1, "previewRect":Landroid/graphics/RectF;
    :goto_1
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 205
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getRealDeviceHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/DualSightVideoModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/CameraAppUI;->getBottomBarHeightByDUT()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float v2, v3, v4

    .line 206
    .local v2, "topHeight":F
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getBottomBarHeightByDUT()I

    move-result v3

    int-to-float v0, v3

    .line 207
    .local v0, "bottomHeight":F
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModuleUI;->mTopEditModeMask:Landroid/view/View;

    float-to-int v4, v2

    invoke-direct {p0, v3, v4}, Lcom/android/camera/DualSightVideoModuleUI;->adjustMask(Landroid/view/View;I)V

    .line 208
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModuleUI;->mBottomEditModeMask:Landroid/view/View;

    float-to-int v4, v0

    invoke-direct {p0, v3, v4}, Lcom/android/camera/DualSightVideoModuleUI;->adjustMask(Landroid/view/View;I)V

    goto :goto_0

    .line 203
    .end local v0    # "bottomHeight":F
    .end local v1    # "previewRect":Landroid/graphics/RectF;
    .end local v2    # "topHeight":F
    :cond_1
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    goto :goto_1
.end method

.method private initEditModeControls()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mEditModeContainer:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mTopEditModeMask:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mBottomEditModeMask:Landroid/view/View;

    .line 196
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModuleUI;->calMaskLayout()V

    .line 197
    return-void
.end method

.method private initLiveBroadcast()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    .line 184
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    .line 185
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

    .line 186
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 188
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 189
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

    .line 190
    return-void
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 179
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 180
    return-void
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 356
    :cond_0
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 403
    :cond_0
    return-void
.end method

.method public getBitMapFromPreview(I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 367
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 368
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/DualSightVideoModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 369
    int-to-float v2, p1

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 370
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 371
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
    .line 390
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getPreviewAreaHeight()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 299
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 310
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public initializeZoom(FF)V
    .locals 3
    .param p1, "maxZoom"    # F
    .param p2, "currentZoom"    # F

    .prologue
    .line 381
    iput p1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mMaxZoom:F

    .line 382
    iput p2, p0, Lcom/android/camera/DualSightVideoModuleUI;->mZoomValue:F

    .line 383
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mMaxZoom:F

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 387
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

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
    .line 147
    iget-boolean v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mInitializeFirstTime:Z

    .line 149
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f04003a

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/DualSightVideoModuleUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/DualSightVideoModuleUI$2;-><init>(Lcom/android/camera/DualSightVideoModuleUI;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-nez v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    invoke-virtual {v1, p1}, Lcom/android/camera/face/Camera2FaceConverter;->convertCamera2Face([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    goto :goto_0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    .line 448
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 454
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModuleUI;->calMaskLayout()V

    .line 455
    return-void
.end method

.method public onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z
    .param p3, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 420
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 422
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 424
    new-instance v0, Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mZoomValue:F

    invoke-direct {v0, p3, p2, v1, p4}, Lcom/android/camera/face/Camera2FaceConverter;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 426
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 431
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 435
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 415
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 409
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 341
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 342
    :cond_0
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 397
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 459
    iput p1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mOrientation:I

    .line 460
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_1

    .end local p1    # "orientation":I
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 463
    :cond_0
    return-void

    .line 461
    .restart local p1    # "orientation":I
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setPictureTakingProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 364
    return-void
.end method

.method public setRecordingTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method

.method public setRecordingTimeWarning(Z)V
    .locals 3
    .param p1, "warning"    # Z

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz p1, :cond_0

    const v0, 0x7f0e00a4

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    return-void

    .line 292
    :cond_0
    const v0, 0x7f0e000f

    goto :goto_0
.end method

.method public showDebugMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 319
    return-void
.end method

.method public showEditModeUI(Z)V
    .locals 2
    .param p1, "showed"    # Z

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mEditModeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mEditModeContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :cond_0
    return-void

    .line 256
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showLiveBroadcastUI(ZI)V
    .locals 4
    .param p1, "broadcasting"    # Z
    .param p2, "orientation"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 233
    if-eqz p1, :cond_5

    .line 234
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 252
    :cond_4
    :goto_0
    return-void

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_6

    .line 246
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 247
    :cond_6
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    .line 248
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method public showRecordingUI(Z)V
    .locals 3
    .param p1, "recording"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingStarted:Z

    .line 221
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 225
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_2

    const v0, 0x7f08028f

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 226
    if-nez p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    :cond_0
    return-void

    .line 223
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 225
    :cond_2
    const v0, 0x7f080290

    goto :goto_1
.end method

.method public startCountdown(II)V
    .locals 2
    .param p1, "sec"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 330
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    goto :goto_0
.end method

.method public updateLiveBroadcastAdapter(Lcom/android/camera/livebroadcast/status/CommentsAdapter;)V
    .locals 1
    .param p1, "commentsAdapter"    # Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 269
    :cond_0
    return-void
.end method

.method public updateLiveBroadcastIcon(Z)V
    .locals 2
    .param p1, "showed"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

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
    .line 272
    .local p2, "reactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/status/Reactions;>;"
    .local p3, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/status/Comment;>;"
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastCount:Landroid/widget/TextView;

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

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p4}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 278
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/android/camera/livebroadcast/status/ReactionView;->LIMIT_NUMBER:I

    if-le v0, v1, :cond_2

    sget v8, Lcom/android/camera/livebroadcast/status/ReactionView;->LIMIT_NUMBER:I

    .line 279
    .local v8, "size":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 280
    new-instance v0, Lcom/android/camera/livebroadcast/status/ReactionView;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModuleUI;->mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

    .line 281
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

    iget-object v5, p0, Lcom/android/camera/DualSightVideoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 282
    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/livebroadcast/status/ReactionView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;I)V

    .line 279
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 278
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    .line 285
    :cond_3
    return-void
.end method
