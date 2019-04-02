.class public Lcom/android/camera/captureintent/CaptureIntentModuleUI;
.super Ljava/lang/Object;
.source "CaptureIntentModuleUI.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mAppUI:Lcom/android/camera/app/CameraAppUI;

.field private mButtonControlRoot:Landroid/view/ViewGroup;

.field private mConverter:Lcom/android/camera/face/Camera2FaceConverter;

.field private mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mInitializeFirstTime:Z

.field private mIntentReviewImageView:Landroid/widget/ImageView;

.field private final mIsVideoCaptureIntent:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private final mListener:Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;

.field private final mModuleRoot:Landroid/view/View;

.field private mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

.field private mOrientation:I

.field private mPlayVideoButton:Landroid/widget/ImageView;

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private mRecordingStarted:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private final mRootView:Landroid/view/View;

.field private final mZoomChancedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CapIntModuleUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/CameraAppUI;Landroid/view/View;Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;Z)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "appUI"    # Lcom/android/camera/app/CameraAppUI;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "listener"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;
    .param p5, "isVideoCaptureIntent"    # Z

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mInitializeFirstTime:Z

    .line 90
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mZoomValue:F

    .line 92
    iput-boolean v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingStarted:Z

    .line 94
    new-instance v0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI$1;-><init>(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 434
    new-instance v0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;-><init>(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mZoomChancedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 112
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 113
    iput-object p2, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    .line 115
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideDefaultThumbnail()V

    .line 116
    iput-object p4, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mListener:Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;

    .line 117
    iput-object p3, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRootView:Landroid/view/View;

    .line 118
    iput-boolean p5, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIsVideoCaptureIntent:Z

    .line 120
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mModuleRoot:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 123
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 125
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingStarted:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->showRecordingUI(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mListener:Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/captureintent/CaptureIntentModuleUI;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    .param p1, "x1"    # F

    .prologue
    .line 57
    iput p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mZoomValue:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/FaceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->layoutIntentReviewImageView(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->initializeMiscControls()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mButtonControlRoot:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPlayVideoButton:Landroid/widget/ImageView;

    return-object p1
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 173
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 174
    return-void
.end method

.method private layoutIntentReviewImageView(Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    .line 179
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 180
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 181
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 182
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 183
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 184
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 182
    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 187
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mButtonControlRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mButtonControlRoot:Landroid/view/ViewGroup;

    .line 192
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 193
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 194
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 195
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 196
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 197
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 195
    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 200
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mButtonControlRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private showRecordingUI(Z)V
    .locals 3
    .param p1, "recording"    # Z

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 596
    iput-boolean p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingStarted:Z

    .line 597
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 601
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_2

    const v0, 0x7f08028f

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 602
    if-nez p1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 607
    :cond_0
    return-void

    .line 599
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 601
    :cond_2
    const v0, 0x7f080290

    goto :goto_1
.end method


# virtual methods
.method public applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V
    .locals 4
    .param p1, "hardwareSpec"    # Lcom/android/camera/hardware/HardwareSpec;
    .param p2, "bottomBarSpec"    # Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    .prologue
    .line 227
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 228
    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_flash_supported_back_camera"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_flash_supported_back_camera"

    .line 233
    invoke-interface {p1}, Lcom/android/camera/hardware/HardwareSpec;->isFlashSupported()Z

    move-result v3

    .line 231
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;Z)V

    .line 237
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 347
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 348
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 350
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 351
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 353
    :cond_0
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 479
    :cond_0
    return-void
.end method

.method public fakefreezeScreenUntilPreviewReady()V
    .locals 1

    .prologue
    .line 426
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 427
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 428
    return-void
.end method

.method public freezeScreenUntilPreviewReady()V
    .locals 2

    .prologue
    .line 421
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 422
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V

    .line 423
    return-void
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getMirrorSetting()Z
    .locals 4

    .prologue
    .line 615
    const/4 v0, 0x0

    .line 617
    .local v0, "mirror":Z
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_front_camera_mirror_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 621
    :cond_0
    return v0
.end method

.method public getPreviewRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPreviewSurfaceSize()Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/android/camera/util/Size;

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v0
.end method

.method public hideModeOptionsExpandButtons()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 241
    return-void
.end method

.method public initializeZoom(FF)V
    .locals 2
    .param p1, "maxZoom"    # F
    .param p2, "currentZoom"    # F

    .prologue
    .line 304
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 305
    iput p2, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mZoomValue:F

    .line 306
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mZoomChancedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 310
    return-void
.end method

.method public loadModuleLayout()V
    .locals 4

    .prologue
    .line 132
    iget-boolean v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mInitializeFirstTime:Z

    .line 135
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    iget-boolean v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_1

    const v1, 0x7f04009b

    move v2, v1

    :goto_1
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI$2;-><init>(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f04002a

    move v2, v1

    goto :goto_1
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-nez v0, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    invoke-virtual {v1, p1}, Lcom/android/camera/face/Camera2FaceConverter;->convertCamera2Face([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    goto :goto_0
.end method

.method public onModulePaused()V
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onModulePaused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 263
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->removePreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->clearFaces()V

    .line 265
    return-void
.end method

.method public onModuleResumed()V
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onModuleResumed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 254
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->addPreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 255
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 294
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->onPreviewStarted()V

    .line 295
    return-void
.end method

.method public onRecordTimeUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "reordTimeText"    # Ljava/lang/String;

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    :cond_0
    return-void
.end method

.method public onRecordTimeWarning(Z)V
    .locals 3
    .param p1, "warning"    # Z

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 589
    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz p1, :cond_1

    const v0, 0x7f0e00a4

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 592
    :cond_0
    return-void

    .line 589
    :cond_1
    const v0, 0x7f0e000f

    goto :goto_0
.end method

.method public onRecordingStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 545
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 546
    sget-object v0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRecordingStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 550
    invoke-direct {p0, v2}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->showRecordingUI(Z)V

    .line 551
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 552
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions(Z)V

    .line 554
    :cond_0
    return-void
.end method

.method public onRecordingStarting()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 533
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 534
    sget-object v0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRecordingStarting"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->pauseAudioPlayback(Landroid/content/Context;)V

    .line 536
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 537
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 538
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 540
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    const v1, 0x7f020212

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToVideoStop(I)V

    .line 542
    :cond_0
    return-void
.end method

.method public onRecordingStoped()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 568
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 569
    sget-object v0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRecordingStoped"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 571
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 573
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->showRecordingUI(Z)V

    .line 574
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 576
    :cond_0
    return-void
.end method

.method public onRecordingStoping()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 557
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 558
    sget-object v0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRecordingStoping"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 561
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 562
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 563
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToFullSize(I)V

    .line 565
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
    .line 494
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 496
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 498
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 499
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 500
    new-instance v0, Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mZoomValue:F

    invoke-direct {v0, p3, p2, v1, p4}, Lcom/android/camera/face/Camera2FaceConverter;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 502
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 507
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 511
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 491
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 485
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 360
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 361
    :cond_0
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 473
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 523
    iput p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mOrientation:I

    .line 524
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 525
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_2

    .end local p1    # "orientation":I
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 530
    :cond_1
    return-void

    .line 527
    .restart local p1    # "orientation":I
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setPreviewSize(Lcom/android/camera/util/Size;)V
    .locals 3
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->setSurfaceTextureDefaultBufferSize(II)V

    .line 612
    :cond_0
    return-void
.end method

.method public setShutterButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 317
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 318
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 319
    return-void
.end method

.method public showCaptureUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 398
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 400
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPlayVideoButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPlayVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPlayVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToIntentCaptureLayout()V

    .line 411
    invoke-virtual {p0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->resumeFaceDetection()V

    .line 412
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->syncModeOptionIndicators()V

    .line 413
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 414
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 415
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 416
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 418
    return-void
.end method

.method public showReviewUI(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "reviewPictureBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 369
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 371
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPlayVideoButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPlayVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mPlayVideoButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/captureintent/CaptureIntentModuleUI$3;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI$3;-><init>(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToIntentReviewLayout()V

    .line 387
    invoke-virtual {p0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->pauseFaceDetection()V

    .line 388
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 389
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 390
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->disableModeOptions()V

    .line 391
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 392
    return-void
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 332
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 333
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 335
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 336
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 337
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    goto :goto_0
.end method

.method public startFlashAnimation(Z)V
    .locals 1
    .param p1, "shortFlash"    # Z

    .prologue
    .line 322
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 323
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->startFlashAnimation(Z)V

    .line 324
    return-void
.end method

.method public startSwitchCameraAnimation()V
    .locals 1

    .prologue
    .line 430
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 431
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->startSwitchCameraAnimation()V

    .line 432
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 285
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 286
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->updatePreviewAspectRatio(F)V

    .line 287
    return-void
.end method

.method public updatePreviewTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 273
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 274
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->mAppUI:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->updatePreviewTransform(Landroid/graphics/Matrix;)V

    .line 275
    return-void
.end method
