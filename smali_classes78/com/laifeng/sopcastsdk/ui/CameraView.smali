.class public Lcom/laifeng/sopcastsdk/ui/CameraView;
.super Landroid/widget/FrameLayout;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/ui/CameraView$ZoomGestureListener;,
        Lcom/laifeng/sopcastsdk/ui/CameraView$GestureListener;,
        Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;
    }
.end annotation


# instance fields
.field private isFocusTouchMode:Z

.field private isMediaOverlay:Z

.field private isRenderSurfaceViewShowing:Z

.field private mAspectRatio:F

.field private mContext:Landroid/content/Context;

.field private mFocusHudRing:Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;

.field private mFocusManager:Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

.field private mIsFocusing:Z

.field protected mRenderSurfaceView:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

.field protected mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

.field private mZoomGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mZoomListener:Lcom/laifeng/sopcastsdk/camera/CameraZoomListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isFocusTouchMode:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isRenderSurfaceViewShowing:Z

    .line 44
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mAspectRatio:F

    .line 62
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->initView()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isFocusTouchMode:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isRenderSurfaceViewShowing:Z

    .line 44
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mAspectRatio:F

    .line 48
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->initView()V

    .line 50
    invoke-direct {p0, p2}, Lcom/laifeng/sopcastsdk/ui/CameraView;->initAspectRatio(Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isFocusTouchMode:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isRenderSurfaceViewShowing:Z

    .line 44
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mAspectRatio:F

    .line 55
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->initView()V

    .line 57
    invoke-direct {p0, p2}, Lcom/laifeng/sopcastsdk/ui/CameraView;->initAspectRatio(Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method static synthetic access$200(Lcom/laifeng/sopcastsdk/ui/CameraView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mIsFocusing:Z

    return v0
.end method

.method static synthetic access$202(Lcom/laifeng/sopcastsdk/ui/CameraView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mIsFocusing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mFocusHudRing:Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mFocusManager:Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/CameraZoomListener;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mZoomListener:Lcom/laifeng/sopcastsdk/camera/CameraZoomListener;

    return-object v0
.end method

.method private addRenderSurfaceView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 111
    iget-boolean v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isRenderSurfaceViewShowing:Z

    if-nez v1, :cond_0

    .line 112
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 113
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mRenderSurfaceView:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isRenderSurfaceViewShowing:Z

    .line 116
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private initAspectRatio(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/laifeng/sopcastsdk/R$styleable;->CameraLivingView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/laifeng/sopcastsdk/R$styleable;->CameraLivingView_aspect_ratio:I

    const/high16 v2, 0x3f100000    # 0.5625f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mAspectRatio:F

    .line 84
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 68
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/laifeng/sopcastsdk/R$layout;->layout_camera_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    new-instance v1, Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    invoke-direct {v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;-><init>()V

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    .line 70
    sget v1, Lcom/laifeng/sopcastsdk/R$id;->render_surface_view:I

    invoke-virtual {p0, v1}, Lcom/laifeng/sopcastsdk/ui/CameraView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mRenderSurfaceView:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    .line 71
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mRenderSurfaceView:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    iget-boolean v2, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isMediaOverlay:Z

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 72
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mRenderSurfaceView:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->getRenderer()Lcom/laifeng/sopcastsdk/video/MyRenderer;

    move-result-object v1

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    .line 73
    sget v1, Lcom/laifeng/sopcastsdk/R$id;->focus_view:I

    invoke-virtual {p0, v1}, Lcom/laifeng/sopcastsdk/ui/CameraView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mFocusHudRing:Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;

    .line 74
    new-instance v1, Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;

    invoke-direct {v1}, Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;-><init>()V

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mFocusManager:Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;

    .line 75
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mFocusManager:Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;

    new-instance v2, Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;

    invoke-direct {v2, p0, v4}, Lcom/laifeng/sopcastsdk/ui/CameraView$MainFocusListener;-><init>(Lcom/laifeng/sopcastsdk/ui/CameraView;Lcom/laifeng/sopcastsdk/ui/CameraView$1;)V

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;->setListener(Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;)V

    .line 76
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/laifeng/sopcastsdk/ui/CameraView$GestureListener;

    invoke-direct {v3, p0}, Lcom/laifeng/sopcastsdk/ui/CameraView$GestureListener;-><init>(Lcom/laifeng/sopcastsdk/ui/CameraView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 77
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/laifeng/sopcastsdk/ui/CameraView$ZoomGestureListener;

    invoke-direct {v3, p0, v4}, Lcom/laifeng/sopcastsdk/ui/CameraView$ZoomGestureListener;-><init>(Lcom/laifeng/sopcastsdk/ui/CameraView;Lcom/laifeng/sopcastsdk/ui/CameraView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mZoomGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 78
    return-void
.end method

.method private removeRenderSurfaceView()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isRenderSurfaceViewShowing:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mRenderSurfaceView:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->removeView(Landroid/view/View;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isRenderSurfaceViewShowing:Z

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method protected changeFocusModeUI()V
    .locals 6

    .prologue
    .line 188
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->getCameraData()Lcom/laifeng/sopcastsdk/camera/CameraData;

    move-result-object v0

    .line 189
    .local v0, "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/laifeng/sopcastsdk/camera/CameraData;->supportTouchFocus:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/laifeng/sopcastsdk/camera/CameraData;->touchFocusMode:Z

    if-eqz v1, :cond_1

    .line 190
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isFocusTouchMode:Z

    .line 191
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mFocusManager:Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    new-instance v2, Lcom/laifeng/sopcastsdk/ui/CameraView$1;

    invoke-direct {v2, p0}, Lcom/laifeng/sopcastsdk/ui/CameraView$1;-><init>(Lcom/laifeng/sopcastsdk/ui/CameraView;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isFocusTouchMode:Z

    .line 201
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mFocusHudRing:Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    .line 216
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 217
    .local v3, "widthSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 219
    .local v2, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 220
    .local v1, "heightSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 222
    .local v0, "heightSpecMode":I
    if-ne v2, v6, :cond_1

    if-ne v0, v4, :cond_1

    .line 223
    int-to-float v4, v3

    iget v5, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mAspectRatio:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 224
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 231
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 232
    return-void

    .line 226
    :cond_1
    if-ne v2, v4, :cond_0

    if-ne v0, v6, :cond_0

    .line 227
    int-to-float v4, v1

    iget v5, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mAspectRatio:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 228
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isFocusTouchMode:Z

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mZoomGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mZoomGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnZoomProgressListener(Lcom/laifeng/sopcastsdk/camera/CameraZoomListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/camera/CameraZoomListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mZoomListener:Lcom/laifeng/sopcastsdk/camera/CameraZoomListener;

    .line 88
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->getVisibility()I

    move-result v0

    .line 93
    .local v0, "currentVisibility":I
    if-ne p1, v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 96
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 107
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 98
    :sswitch_0
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->addRenderSurfaceView()V

    goto :goto_1

    .line 101
    :sswitch_1
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->removeRenderSurfaceView()V

    goto :goto_1

    .line 104
    :sswitch_2
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->removeRenderSurfaceView()V

    goto :goto_1

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->isMediaOverlay:Z

    .line 159
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mRenderSurfaceView:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView;->mRenderSurfaceView:Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 162
    :cond_0
    return-void
.end method
