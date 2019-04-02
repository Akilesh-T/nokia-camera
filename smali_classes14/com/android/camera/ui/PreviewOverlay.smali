.class public Lcom/android/camera/ui/PreviewOverlay;
.super Landroid/view/View;
.source "PreviewOverlay.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;,
        Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;,
        Lcom/android/camera/ui/PreviewOverlay$WideModeControl;,
        Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;,
        Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID:I = -0x1

.field private static final MIN_ZOOM:F = 1.0f

.field private static final NUM_ZOOM_LEVELS:I = 0x7

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final ZOOM_MINIMUM_WAIT_MILLIS:J = 0x10L

.field public static final ZOOM_MIN_RATIO:F = 1.0f


# instance fields
.field private final BOTTOM_MARGIN_RAIO:F

.field private mBottomBarHeight:I

.field private mCenterRect:Landroid/graphics/RectF;

.field private mCenterX:I

.field private mCenterY:I

.field private mCurZoomOffset:F

.field private mCurrA11yZoom:F

.field private mCurrA11yZoomLevel:I

.field private mDelayZoomCallUntilMillis:J

.field private mDragPressed:Z

.field private mDragStarted:Z

.field private mDragZoomGestureDetector:Landroid/view/GestureDetector;

.field private final mDragZoomGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mEnableZoom:Z

.field private mForceToHide:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mInitZoom:F

.field private mMaxZoom:F

.field private mModuleControlBarHeight:I

.field private mOnPreviewTouchedListener:Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;

.field private mProcessScaling:Z

.field private mScaleDetector:Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mSlop:I

.field private mTargetZoom:F

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUseDualZoom:Z

.field private mUseModuleListenerFirst:Z

.field private mUseWideAndUltraWide:Z

.field private mWideModeControl:Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

.field private mWideModeCtlGestureDetector:Landroid/view/GestureDetector;

.field private mWidth:I

.field private final mWindModeCtlGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mZoomByDragRunnable:Ljava/lang/Runnable;

.field private mZoomListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

.field private final mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PreviewOverlay"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/PreviewOverlay;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mDelayZoomCallUntilMillis:J

    .line 77
    new-instance v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;-><init>(Lcom/android/camera/ui/PreviewOverlay;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    .line 78
    iput-object v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    .line 79
    iput-object v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragZoomGestureDetector:Landroid/view/GestureDetector;

    .line 80
    iput-object v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeCtlGestureDetector:Landroid/view/GestureDetector;

    .line 81
    iput-object v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 82
    iput-boolean v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseModuleListenerFirst:Z

    .line 83
    iput-object v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 85
    iput-object v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 86
    iput v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mModuleControlBarHeight:I

    .line 87
    iput-boolean v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseDualZoom:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mForceToHide:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragStarted:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragPressed:Z

    .line 91
    iput-boolean v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mEnableZoom:Z

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurZoomOffset:F

    .line 98
    iput v4, p0, Lcom/android/camera/ui/PreviewOverlay;->mInitZoom:F

    .line 99
    iput v4, p0, Lcom/android/camera/ui/PreviewOverlay;->mTargetZoom:F

    .line 100
    const v0, 0x402ccccd    # 2.7f

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay;->BOTTOM_MARGIN_RAIO:F

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mSlop:I

    .line 105
    iput v4, p0, Lcom/android/camera/ui/PreviewOverlay;->mMaxZoom:F

    .line 107
    iput-boolean v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseWideAndUltraWide:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mProcessScaling:Z

    .line 115
    iput v4, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoom:F

    .line 120
    iput v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoomLevel:I

    .line 309
    new-instance v0, Lcom/android/camera/ui/PreviewOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PreviewOverlay$1;-><init>(Lcom/android/camera/ui/PreviewOverlay;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragZoomGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 392
    new-instance v0, Lcom/android/camera/ui/PreviewOverlay$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PreviewOverlay$2;-><init>(Lcom/android/camera/ui/PreviewOverlay;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mWindModeCtlGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 526
    new-instance v0, Lcom/android/camera/ui/PreviewOverlay$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PreviewOverlay$3;-><init>(Lcom/android/camera/ui/PreviewOverlay;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomByDragRunnable:Ljava/lang/Runnable;

    .line 152
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/PreviewOverlay;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomByDragRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/PreviewOverlay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mForceToHide:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/PreviewOverlay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseDualZoom:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/PreviewOverlay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseWideAndUltraWide:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$WideModeControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeControl:Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/PreviewOverlay;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mDelayZoomCallUntilMillis:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/camera/ui/PreviewOverlay;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p1, "x1"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mDelayZoomCallUntilMillis:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/PreviewOverlay;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mBottomBarHeight:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/PreviewOverlay;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mModuleControlBarHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/PreviewOverlay;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCenterRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$2000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/camera/ui/PreviewOverlay;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/PreviewOverlay;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mCenterRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/camera/ui/PreviewOverlay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mProcessScaling:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/camera/ui/PreviewOverlay;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mProcessScaling:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/ui/PreviewOverlay;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mWidth:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/camera/ui/PreviewOverlay;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mWidth:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/ui/PreviewOverlay;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mHeight:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/camera/ui/PreviewOverlay;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mHeight:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/ui/PreviewOverlay;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCenterX:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/camera/ui/PreviewOverlay;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mCenterX:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/camera/ui/PreviewOverlay;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCenterY:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/camera/ui/PreviewOverlay;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mCenterY:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/ui/PreviewOverlay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragPressed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/PreviewOverlay;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragPressed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/PreviewOverlay;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mSlop:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/PreviewOverlay;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mSlop:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/PreviewOverlay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragStarted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/PreviewOverlay;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/PreviewOverlay;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mInitZoom:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/ui/PreviewOverlay;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p1, "x1"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mInitZoom:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/PreviewOverlay;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mTargetZoom:F

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/ui/PreviewOverlay;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay;
    .param p1, "x1"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mTargetZoom:F

    return p1
.end method

.method private getZoomAtLevel(I)F
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 267
    add-int/lit8 v0, p1, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay;->mMaxZoom:F

    sub-float/2addr v1, v3

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method


# virtual methods
.method public handleMotionEventByModule(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseModuleListenerFirst:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 305
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseModuleListenerFirst:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needUseModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseModuleListenerFirst:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 565
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 566
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    if-nez v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mForceToHide:Z

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onExternalTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 440
    iget-boolean v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseWideAndUltraWide:Z

    if-eqz v5, :cond_6

    .line 441
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeCtlGestureDetector:Landroid/view/GestureDetector;

    if-nez v5, :cond_1

    .line 522
    :cond_0
    :goto_0
    return v3

    .line 444
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeCtlGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 445
    .local v0, "handle":Z
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 446
    :cond_2
    const/4 v1, 0x0

    .line 447
    .local v1, "invalid":Z
    iget-boolean v4, p0, Lcom/android/camera/ui/PreviewOverlay;->mProcessScaling:Z

    if-eqz v4, :cond_3

    .line 448
    iput-boolean v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mProcessScaling:Z

    .line 449
    const/4 v1, 0x1

    .line 451
    :cond_3
    iget-boolean v4, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragPressed:Z

    if-eqz v4, :cond_4

    .line 452
    iput-boolean v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragPressed:Z

    .line 453
    const/4 v1, 0x1

    .line 456
    :cond_4
    if-eqz v1, :cond_5

    .line 457
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .end local v1    # "invalid":Z
    :cond_5
    move v3, v0

    .line 461
    goto :goto_0

    .line 463
    .end local v0    # "handle":Z
    :cond_6
    sget-boolean v5, Lcom/android/camera/product_utils/ProductUtil;->SHOW_ZOOM_ALWAYS:Z

    if-eqz v5, :cond_0

    .line 464
    iget-boolean v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseDualZoom:Z

    if-eqz v5, :cond_0

    .line 465
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragZoomGestureDetector:Landroid/view/GestureDetector;

    if-eqz v5, :cond_0

    .line 466
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mCenterRect:Landroid/graphics/RectF;

    if-eqz v5, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 469
    .restart local v0    # "handle":Z
    iget-boolean v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragStarted:Z

    if-nez v5, :cond_a

    .line 470
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragZoomGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 471
    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_8

    .line 472
    :cond_7
    iget-boolean v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragPressed:Z

    if-eqz v5, :cond_8

    .line 473
    iput-boolean v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragPressed:Z

    .line 474
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 522
    :cond_8
    :goto_1
    if-nez v0, :cond_9

    iget-boolean v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragPressed:Z

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragStarted:Z

    if-eqz v5, :cond_0

    :cond_9
    move v3, v4

    goto :goto_0

    .line 478
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 499
    iget-boolean v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragPressed:Z

    if-eqz v5, :cond_b

    .line 500
    iput-boolean v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragPressed:Z

    .line 501
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 503
    :cond_b
    iget-boolean v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragStarted:Z

    if-eqz v5, :cond_8

    .line 504
    const/4 v0, 0x1

    .line 505
    iput-boolean v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragStarted:Z

    .line 506
    iput v9, p0, Lcom/android/camera/ui/PreviewOverlay;->mTargetZoom:F

    .line 507
    iput v9, p0, Lcom/android/camera/ui/PreviewOverlay;->mInitZoom:F

    .line 508
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 509
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomByDragRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/PreviewOverlay;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 510
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    if-eqz v5, :cond_c

    .line 511
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-interface {v5}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomEnd()V

    .line 513
    :cond_c
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    if-eqz v5, :cond_8

    .line 514
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-virtual {v5}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->hideZoomUI()V

    goto :goto_1

    .line 480
    :pswitch_0
    iget v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mWidth:I

    if-eqz v5, :cond_8

    .line 481
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    if-eqz v5, :cond_8

    .line 482
    const/4 v2, 0x0

    .line 483
    .local v2, "offset":F
    iget v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mSlop:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/PreviewOverlay;->mCenterX:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_f

    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/PreviewOverlay;->mCenterX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/PreviewOverlay;->mSlop:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 490
    :cond_d
    :goto_2
    iget v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mInitZoom:F

    iget-object v6, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-static {v6}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->access$1500(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;)F

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/PreviewOverlay;->mWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    div-float v7, v2, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mTargetZoom:F

    .line 491
    iget v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mTargetZoom:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_e

    .line 492
    iput v9, p0, Lcom/android/camera/ui/PreviewOverlay;->mTargetZoom:F

    .line 494
    :cond_e
    iget v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mTargetZoom:F

    iget-object v6, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-static {v6}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->access$1600(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    .line 495
    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-static {v5}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->access$1600(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;)F

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/PreviewOverlay;->mTargetZoom:F

    goto/16 :goto_1

    .line 486
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/PreviewOverlay;->mCenterX:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_d

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/PreviewOverlay;->mCenterX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/PreviewOverlay;->mSlop:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_2

    .line 478
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->layout(IIII)V

    .line 561
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseModuleListenerFirst:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 276
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseModuleListenerFirst:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleDetector:Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;

    if-nez v0, :cond_3

    .line 283
    new-instance v0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;-><init>(Lcom/android/camera/ui/PreviewOverlay;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleDetector:Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;

    .line 285
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mEnableZoom:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseWideAndUltraWide:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeControl:Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeControl:Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    .line 286
    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->isUltraWideModeEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 287
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleDetector:Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 295
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mOnPreviewTouchedListener:Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;

    if-eqz v0, :cond_6

    .line 296
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mOnPreviewTouchedListener:Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;->onPreviewTouched(Landroid/view/MotionEvent;)V

    .line 298
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 11

    .prologue
    const/4 v4, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 610
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleDetector:Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleDetector:Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;

    invoke-virtual {v2}, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 612
    .local v0, "event_time":J
    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleDetector:Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 614
    .end local v0    # "event_time":J
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragPressed:Z

    if-eqz v2, :cond_1

    .line 615
    iput-boolean v7, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragPressed:Z

    .line 616
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 618
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragStarted:Z

    if-eqz v2, :cond_3

    .line 619
    iput-boolean v7, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragStarted:Z

    .line 620
    iput v10, p0, Lcom/android/camera/ui/PreviewOverlay;->mTargetZoom:F

    .line 621
    iput v10, p0, Lcom/android/camera/ui/PreviewOverlay;->mInitZoom:F

    .line 622
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomByDragRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/PreviewOverlay;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 623
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    if-eqz v2, :cond_2

    .line 624
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-interface {v2}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomEnd()V

    .line 626
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    if-eqz v2, :cond_3

    .line 627
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-virtual {v2}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->hideZoomUI()V

    .line 630
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 632
    .restart local v0    # "event_time":J
    iget-object v8, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 634
    .end local v0    # "event_time":J
    :cond_4
    iput-object v9, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 635
    iput-object v9, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 636
    iput-object v9, p0, Lcom/android/camera/ui/PreviewOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    .line 637
    iput-object v9, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragZoomGestureDetector:Landroid/view/GestureDetector;

    .line 638
    iput-object v9, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeCtlGestureDetector:Landroid/view/GestureDetector;

    .line 639
    iput-object v9, p0, Lcom/android/camera/ui/PreviewOverlay;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 640
    iput-boolean v7, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseModuleListenerFirst:Z

    .line 641
    iput v7, p0, Lcom/android/camera/ui/PreviewOverlay;->mModuleControlBarHeight:I

    .line 642
    iput-boolean v7, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseDualZoom:Z

    .line 643
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoomLevel:I

    .line 644
    iput v10, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoom:F

    .line 645
    return-void
.end method

.method public setBottomBarHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 1312
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mBottomBarHeight:I

    .line 1313
    return-void
.end method

.method public setForceToHide(Z)V
    .locals 0
    .param p1, "forceToHide"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mForceToHide:Z

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 212
    return-void
.end method

.method public setGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 2
    .param p1, "gestureListener"    # Landroid/view/GestureDetector$OnGestureListener;

    .prologue
    .line 579
    if-eqz p1, :cond_0

    .line 580
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    .line 582
    :cond_0
    return-void
.end method

.method public setOnPreviewTouchedListener(Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mOnPreviewTouchedListener:Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;

    .line 555
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 1302
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseWideAndUltraWide:Z

    if-eqz v0, :cond_1

    .line 1303
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeControl:Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->setOrientation(IZ)V

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1305
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    if-eqz v0, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->setOrintation(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    goto :goto_1
.end method

.method public setScaleGestureListener(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 2
    .param p1, "scaleGestureListener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .prologue
    .line 585
    if-eqz p1, :cond_0

    .line 586
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 588
    :cond_0
    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "touchListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 596
    return-void
.end method

.method public setUseModuleListenerFirst(Z)V
    .locals 0
    .param p1, "useModuleListenerFirst"    # Z

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseModuleListenerFirst:Z

    .line 600
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "zoom"    # F

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->setZoom(F)V

    .line 218
    :cond_0
    return-void
.end method

.method public setZoomEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/android/camera/ui/PreviewOverlay;->mEnableZoom:Z

    .line 222
    return-void
.end method

.method public setupZoom(FFIZZZZLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V
    .locals 3
    .param p1, "zoomMaxRatio"    # F
    .param p2, "zoom"    # F
    .param p3, "moduleControlBarHeight"    # I
    .param p4, "useDualZoom"    # Z
    .param p5, "useWideAndUltraWide"    # Z
    .param p6, "enableUltraWideMode"    # Z
    .param p7, "forceToHide"    # Z
    .param p8, "zoomChangeListener"    # Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .prologue
    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mEnableZoom:Z

    .line 175
    iput-object p8, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 176
    iput p3, p0, Lcom/android/camera/ui/PreviewOverlay;->mModuleControlBarHeight:I

    .line 177
    iput-boolean p5, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseWideAndUltraWide:Z

    .line 180
    iget-boolean v1, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseWideAndUltraWide:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeControl:Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;-><init>(Lcom/android/camera/ui/PreviewOverlay;)V

    iput-object v1, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeControl:Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeControl:Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeControl:Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    invoke-virtual {v1, p6}, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->setUltraWideModeEnabled(Z)V

    .line 190
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseWideAndUltraWide:Z

    if-nez v1, :cond_4

    if-eqz p4, :cond_4

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseDualZoom:Z

    .line 191
    iput-boolean p7, p0, Lcom/android/camera/ui/PreviewOverlay;->mForceToHide:Z

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-static {v0, p1, p2}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->access$000(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;FF)V

    .line 193
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mUseWideAndUltraWide:Z

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeCtlGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_2

    .line 195
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mWindModeCtlGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mWideModeCtlGestureDetector:Landroid/view/GestureDetector;

    .line 204
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomProcessor:Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->updateVisible()V

    .line 207
    :cond_3
    return-void

    .line 190
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragZoomGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_2

    .line 200
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragZoomGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mDragZoomGestureDetector:Landroid/view/GestureDetector;

    goto :goto_1
.end method

.method public setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V
    .locals 9
    .param p1, "zoomMaxRatio"    # F
    .param p2, "zoom"    # F
    .param p3, "zoomChangeListener"    # Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .prologue
    const/4 v3, 0x0

    .line 164
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFIZZZZLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 166
    return-void
.end method

.method public zoomIn(Landroid/view/View;F)F
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxZoom"    # F

    .prologue
    .line 231
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoomLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoomLevel:I

    .line 232
    iput p2, p0, Lcom/android/camera/ui/PreviewOverlay;->mMaxZoom:F

    .line 233
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoomLevel:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewOverlay;->getZoomAtLevel(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoom:F

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoom:F

    invoke-interface {v0, v1}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomValueChanged(F)V

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080016

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 235
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 238
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoom:F

    return v0
.end method

.method public zoomOut(Landroid/view/View;F)F
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxZoom"    # F

    .prologue
    .line 249
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoomLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoomLevel:I

    .line 250
    iput p2, p0, Lcom/android/camera/ui/PreviewOverlay;->mMaxZoom:F

    .line 251
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoomLevel:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewOverlay;->getZoomAtLevel(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoom:F

    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mZoomListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoom:F

    invoke-interface {v0, v1}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomValueChanged(F)V

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080016

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 253
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 256
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay;->mCurrA11yZoom:F

    return v0
.end method
