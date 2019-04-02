.class public Lcom/android/camera/widget/FilmstripView;
.super Landroid/view/ViewGroup;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/FilmstripView$FilmstripGestures;,
        Lcom/android/camera/widget/FilmstripView$FilmstripScrollGesture;,
        Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;,
        Lcom/android/camera/widget/FilmstripView$ViewItem;,
        Lcom/android/camera/widget/FilmstripView$PlayVideoIntent;
    }
.end annotation


# static fields
.field private static final BUFFER_CENTER:I = 0x2

.field private static final BUFFER_SIZE:I = 0x5

.field private static final CAMERA_PREVIEW_SWIPE_THRESHOLD:I = 0x12c

.field private static final DECELERATION_FACTOR:I = 0x4

.field private static final FILM_STRIP_SCALE:F = 0.7f

.field private static final FLING_COASTING_DURATION_S:F = 0.05f

.field private static final FULL_SCREEN_SCALE:F = 1.0f

.field private static final GEOMETRY_ADJUST_TIME_MS:I = 0x190

.field private static final MOUSE_SCROLL_FACTOR:F = 128.0f

.field private static final PROMOTE_HEIGHT_RATIO:F = 0.5f

.field private static final PROMOTE_VELOCITY:F = 3.5f

.field private static final SNAP_IN_CENTER_TIME_MS:I = 0x258

.field private static final SWIPE_TIME_OUT:I = 0x1f4

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final TOLERANCE:F = 0.1f

.field private static final VELOCITY_PROMOTE_HEIGHT_RATIO:F = 0.1f

.field private static final ZOOM_ANIMATION_DURATION_MS:I = 0xc8


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAdapterIndexUserIsScrollingOver:I

.field private mCenterX:I

.field private mCheckToIntercept:Z

.field private mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

.field private mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

.field private mDown:Landroid/view/MotionEvent;

.field private final mDrawArea:Landroid/graphics/Rect;

.field private mFullScreenUIHidden:Z

.field private mGestureListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

.field private mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

.field private mIsUserScrolling:Z

.field private mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

.field private mOverScaleFactor:F

.field private mScale:F

.field private mSlop:I

.field private mVideoClickedCallback:Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;

.field private mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

.field private mViewGapInPixel:I

.field private final mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

.field private mZoomView:Lcom/android/camera/ui/ZoomView;

.field private final recycledViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FilmstripView"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 598
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    .line 129
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/widget/FilmstripView$ViewItem;

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView;->mCheckToIntercept:Z

    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/widget/FilmstripView;->mOverScaleFactor:F

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView;->mFullScreenUIHidden:Z

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    .line 599
    check-cast p1, Lcom/android/camera/CameraActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->init(Lcom/android/camera/CameraActivity;)V

    .line 600
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 604
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    .line 129
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/widget/FilmstripView$ViewItem;

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView;->mCheckToIntercept:Z

    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/widget/FilmstripView;->mOverScaleFactor:F

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView;->mFullScreenUIHidden:Z

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    .line 605
    check-cast p1, Lcom/android/camera/CameraActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->init(Lcom/android/camera/CameraActivity;)V

    .line 606
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 610
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    .line 129
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/widget/FilmstripView$ViewItem;

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView;->mCheckToIntercept:Z

    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/widget/FilmstripView;->mOverScaleFactor:F

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView;->mFullScreenUIHidden:Z

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    .line 611
    check-cast p1, Lcom/android/camera/CameraActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->init(Lcom/android/camera/CameraActivity;)V

    .line 612
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/FilmstripView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/widget/FilmstripView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->reload()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/widget/FilmstripView;Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->update(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/widget/FilmstripView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->updateInsertion(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/widget/FilmstripView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->getCurrentItemAdapterIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->renderAllThumbnails()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/widget/FilmstripView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->animateItemRemoval(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/widget/FilmstripView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/widget/FilmstripView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/widget/FilmstripView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->clampCenterX()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->scrollCurrentItemToCenter()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/widget/FilmstripView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->isCurrentItemCentered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/widget/FilmstripView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->renderThumbnail(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->onLeaveFullScreen()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->onLeaveFilmstrip()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->onEnterFullScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/widget/FilmstripView;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/FilmstripView;->recycleView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->onEnterFilmstrip()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/widget/FilmstripView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->setViewGap(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/widget/FilmstripView;Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->setDataAdapter(Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/widget/FilmstripView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->inFilmstrip()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/widget/FilmstripView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->inFullScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/widget/FilmstripView;Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->setListener(Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/widget/FilmstripView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/camera/widget/FilmstripView;->mViewGapInPixel:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/widget/FilmstripView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/camera/widget/FilmstripView;->mFullScreenUIHidden:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->onLeaveFullScreenUiHidden()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->onLeaveZoomView()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/widget/FilmstripView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/ui/ZoomView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->onEnterFullScreenUiHidden()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->onEnterZoomView()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/widget/FilmstripView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/camera/widget/FilmstripView;->mOverScaleFactor:F

    return v0
.end method

.method static synthetic access$4900(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->resetZoomView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/widget/FilmstripView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->inZoomView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/camera/widget/FilmstripView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->renderFullRes(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/camera/widget/FilmstripView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/camera/widget/FilmstripView;->mIsUserScrolling:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/camera/widget/FilmstripView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/camera/widget/FilmstripView;->mIsUserScrolling:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/camera/widget/FilmstripView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->demoteData(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/camera/widget/FilmstripView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->promoteData(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/widget/FilmstripView;Lcom/android/camera/widget/FilmstripView$ViewItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # Lcom/android/camera/widget/FilmstripView$ViewItem;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->slideViewBack(Lcom/android/camera/widget/FilmstripView$ViewItem;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/camera/widget/FilmstripView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/camera/widget/FilmstripView;->mAdapterIndexUserIsScrollingOver:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/camera/widget/FilmstripView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/camera/widget/FilmstripView;->mAdapterIndexUserIsScrollingOver:I

    return p1
.end method

.method static synthetic access$6200(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->hideZoomView()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    return-object v0
.end method

.method private adjustChildZOrder()V
    .locals 2

    .prologue
    .line 1000
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 1000
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->bringViewToFront()V

    goto :goto_1

    .line 1007
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/FilmstripView;->bringChildToFront(Landroid/view/View;)V

    .line 1008
    return-void
.end method

.method private animateItemRemoval(I)V
    .locals 17
    .param p1, "index"    # I

    .prologue
    .line 1340
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    .line 1341
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/widget/FilmstripView;->resetZoomView()V

    .line 1343
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/widget/FilmstripView;->findItemInBufferByAdapterIndex(I)I

    move-result v10

    .line 1346
    .local v10, "removeAtBufferIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v13, 0x5

    if-ge v5, v13, :cond_3

    .line 1347
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v13

    move/from16 v0, p1

    if-gt v13, v0, :cond_2

    .line 1346
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1350
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setIndex(I)V

    goto :goto_1

    .line 1352
    :cond_3
    const/4 v13, -0x1

    if-ne v10, v13, :cond_5

    .line 1466
    :cond_4
    return-void

    .line 1356
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v11, v13, v10

    .line 1357
    .local v11, "removedItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    invoke-virtual {v11}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/FilmstripView;->mViewGapInPixel:I

    add-int v8, v13, v14

    .line 1359
    .local v8, "offsetX":I
    add-int/lit8 v5, v10, 0x1

    :goto_2
    const/4 v13, 0x5

    if-ge v5, v13, :cond_7

    .line 1360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    if-eqz v13, :cond_6

    .line 1361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v14

    sub-int/2addr v14, v8

    invoke-virtual {v13, v14}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setLeftPosition(I)V

    .line 1359
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1365
    :cond_7
    const/4 v13, 0x2

    if-lt v10, v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v10

    .line 1366
    invoke-virtual {v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v14}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v14

    if-ge v13, v14, :cond_12

    .line 1370
    move v5, v10

    :goto_3
    const/4 v13, 0x4

    if-ge v5, v13, :cond_8

    .line 1371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v15, v5, 0x1

    aget-object v14, v14, v15

    aput-object v14, v13, v5

    .line 1370
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1375
    :cond_8
    const/4 v3, 0x4

    .line 1376
    .local v3, "curr":I
    add-int/lit8 v9, v3, -0x1

    .line 1377
    .local v9, "prev":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v9

    if-eqz v13, :cond_9

    .line 1378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v14, v14, v9

    invoke-virtual {v14}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v14

    aput-object v14, v13, v3

    .line 1382
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/widget/FilmstripView;->inFullScreen()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1383
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v14, 0x3

    aget-object v7, v13, v14

    .line 1385
    .local v7, "nextItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v7, :cond_a

    .line 1386
    const/4 v13, 0x4

    invoke-virtual {v7, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 1391
    .end local v7    # "nextItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_a
    move v5, v10

    :goto_4
    const/4 v13, 0x5

    if-ge v5, v13, :cond_c

    .line 1392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    if-eqz v13, :cond_b

    .line 1393
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    int-to-float v14, v8

    invoke-virtual {v13, v14}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1391
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1399
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v14, 0x2

    aget-object v4, v13, v14

    .line 1400
    .local v4, "currItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v4, :cond_e

    .line 1401
    invoke-virtual {v4}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v14}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    .line 1402
    invoke-virtual {v4}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v14

    if-le v13, v14, :cond_f

    .line 1403
    invoke-virtual {v4}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    sub-int v2, v13, v14

    .line 1404
    .local v2, "adjustDiff":I
    invoke-virtual {v4}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    .line 1405
    const/4 v5, 0x0

    :goto_5
    const/4 v13, 0x5

    if-ge v5, v13, :cond_f

    .line 1406
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    if-eqz v13, :cond_d

    .line 1407
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    int-to-float v14, v2

    invoke-virtual {v13, v14}, Lcom/android/camera/widget/FilmstripView$ViewItem;->translateXScaledBy(F)V

    .line 1405
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1413
    .end local v2    # "adjustDiff":I
    :cond_e
    sget-object v13, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "Caught invalid update in removal animation."

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1439
    .end local v4    # "currItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    .end local v9    # "prev":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/FilmstripView;->getHeight()I

    move-result v13

    div-int/lit8 v12, v13, 0x8

    .line 1440
    .local v12, "transY":I
    invoke-virtual {v11}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationY()F

    move-result v13

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_10

    .line 1441
    neg-int v12, v12

    .line 1443
    :cond_10
    invoke-virtual {v11}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationY()F

    move-result v13

    int-to-float v14, v12

    add-float/2addr v13, v14

    const-wide/16 v14, 0x190

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->animateTranslationY(FJLandroid/animation/TimeInterpolator;)V

    .line 1445
    const/4 v13, 0x0

    const-wide/16 v14, 0x190

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->animateAlpha(FJLandroid/animation/TimeInterpolator;)V

    .line 1446
    new-instance v13, Lcom/android/camera/widget/FilmstripView$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/android/camera/widget/FilmstripView$2;-><init>(Lcom/android/camera/widget/FilmstripView;Lcom/android/camera/widget/FilmstripView$ViewItem;)V

    const-wide/16 v14, 0x190

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/camera/widget/FilmstripView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1453
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/widget/FilmstripView;->adjustChildZOrder()V

    .line 1454
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/FilmstripView;->invalidate()V

    .line 1457
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    if-eqz v13, :cond_4

    .line 1460
    const/4 v5, 0x0

    :goto_6
    const/4 v13, 0x5

    if-ge v5, v13, :cond_4

    .line 1461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    .line 1462
    invoke-virtual {v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationX()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_11

    .line 1463
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/camera/widget/FilmstripView;->slideViewBack(Lcom/android/camera/widget/FilmstripView$ViewItem;)V

    .line 1460
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1417
    .end local v3    # "curr":I
    .end local v12    # "transY":I
    :cond_12
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    sub-int/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    .line 1419
    move v5, v10

    :goto_7
    if-lez v5, :cond_13

    .line 1420
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v15, v5, -0x1

    aget-object v14, v14, v15

    aput-object v14, v13, v5

    .line 1419
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 1424
    :cond_13
    const/4 v3, 0x0

    .line 1425
    .restart local v3    # "curr":I
    add-int/lit8 v6, v3, 0x1

    .line 1426
    .local v6, "next":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v6

    if-eqz v13, :cond_14

    .line 1427
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v14

    aput-object v14, v13, v3

    .line 1432
    :cond_14
    move v5, v10

    :goto_8
    if-ltz v5, :cond_f

    .line 1433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    if-eqz v13, :cond_15

    .line 1434
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v13, v13, v5

    neg-int v14, v8

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1432
    :cond_15
    add-int/lit8 v5, v5, -0x1

    goto :goto_8
.end method

.method private buildViewItemAt(I)Lcom/android/camera/widget/FilmstripView$ViewItem;
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 831
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 834
    sget-object v6, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "Activity destroyed, don\'t load data"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 858
    :cond_0
    :goto_0
    return-object v2

    .line 837
    :cond_1
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v6, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 838
    .local v0, "data":Lcom/android/camera/data/FilmstripItem;
    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 846
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 848
    .local v1, "height":I
    sget-object v6, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "suggesting item bounds: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 849
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v6, v5, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->suggestViewSizeBound(II)V

    .line 851
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->getRecycledView(I)Landroid/view/View;

    move-result-object v3

    .line 852
    .local v3, "recycled":Landroid/view/View;
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mVideoClickedCallback:Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;

    invoke-interface {v6, v3, p1, v7}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getView(Landroid/view/View;ILcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;

    move-result-object v4

    .line 853
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 856
    new-instance v2, Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-direct {v2, p1, v4, v0, p0}, Lcom/android/camera/widget/FilmstripView$ViewItem;-><init>(ILandroid/view/View;Lcom/android/camera/data/FilmstripItem;Lcom/android/camera/widget/FilmstripView;)V

    .line 857
    .local v2, "item":Lcom/android/camera/widget/FilmstripView$ViewItem;
    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->addViewToHierarchy()V

    goto :goto_0
.end method

.method private clampCenterX()Z
    .locals 4

    .prologue
    .line 973
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v3, 0x2

    aget-object v0, v2, v3

    .line 974
    .local v0, "currentItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v0, :cond_1

    .line 975
    const/4 v1, 0x0

    .line 992
    :cond_0
    :goto_0
    return v1

    .line 978
    :cond_1
    const/4 v1, 0x0

    .line 979
    .local v1, "stopScroll":Z
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 981
    const/4 v1, 0x1

    .line 988
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 989
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v2

    iput v2, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    goto :goto_0

    .line 982
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v3}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    .line 983
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 985
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private demoteData(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onFocusedDataDemoted(I)V

    .line 1869
    :cond_0
    return-void
.end method

.method private fadeAndScaleRightViewItem(I)V
    .locals 8
    .param p1, "bufferIndex"    # I

    .prologue
    const/4 v7, 0x4

    .line 1097
    const/4 v5, 0x1

    if-lt p1, v5, :cond_0

    const/4 v5, 0x5

    if-le p1, v5, :cond_1

    .line 1098
    :cond_0
    sget-object v5, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "fadeAndScaleRightViewItem() - bufferIndex out of bound!"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1131
    :goto_0
    return-void

    .line 1102
    :cond_1
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v2, v5, p1

    .line 1103
    .local v2, "item":Lcom/android/camera/widget/FilmstripView$ViewItem;
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v6, p1, -0x1

    aget-object v4, v5, v6

    .line 1104
    .local v4, "previousItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v2, :cond_2

    if-nez v4, :cond_3

    .line 1105
    :cond_2
    sget-object v5, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fadeAndScaleRightViewItem() - Invalid view item (curr or prev == null).curr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1110
    :cond_3
    const/4 v5, 0x3

    if-le p1, v5, :cond_4

    .line 1112
    invoke-virtual {v2, v7}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setVisibility(I)V

    goto :goto_0

    .line 1115
    :cond_4
    invoke-virtual {v4}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v3

    .line 1116
    .local v3, "prevCenterX":I
    iget v5, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    if-gt v5, v3, :cond_5

    .line 1119
    invoke-virtual {v2, v7}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setVisibility(I)V

    goto :goto_0

    .line 1122
    :cond_5
    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    .line 1123
    .local v0, "currCenterX":I
    iget v5, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    int-to-float v5, v5

    int-to-float v6, v3

    sub-float/2addr v5, v6

    sub-int v6, v0, v3

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 1125
    .local v1, "fadeDownFraction":F
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    const v6, 0x3f333333    # 0.7f

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    invoke-virtual {v2, v5, v0, v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    .line 1128
    invoke-virtual {v2, v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setAlpha(F)V

    .line 1129
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1130
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setVisibility(I)V

    goto :goto_0
.end method

.method private findItemInBufferByAdapterIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1470
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1471
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    .line 1472
    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1476
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1470
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1476
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findTheNearestView(I)I
    .locals 8
    .param p1, "viewX"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v5, -0x1

    .line 801
    const/4 v4, 0x0

    .line 803
    .local v4, "nearest":I
    :goto_0
    if-ge v4, v7, :cond_1

    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v6, v6, v4

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v6, v6, v4

    .line 804
    invoke-virtual {v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 805
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 808
    :cond_1
    if-ne v4, v7, :cond_2

    .line 827
    :goto_1
    return v5

    .line 812
    :cond_2
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v6

    sub-int v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 814
    .local v3, "min":I
    add-int/lit8 v2, v4, 0x1

    .local v2, "i":I
    :goto_2
    if-ge v2, v7, :cond_5

    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v6, v6, v2

    if-eqz v6, :cond_5

    .line 816
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 814
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 820
    :cond_4
    iget-object v6, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    .line 821
    .local v0, "centerX":I
    sub-int v6, p1, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 822
    .local v1, "dist":I
    if-ge v1, v3, :cond_3

    .line 823
    move v3, v1

    .line 824
    move v4, v2

    goto :goto_3

    .end local v0    # "centerX":I
    .end local v1    # "dist":I
    :cond_5
    move v5, v4

    .line 827
    goto :goto_1
.end method

.method private getCurrentItemAdapterIndex()I
    .locals 3

    .prologue
    .line 1014
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 1015
    .local v0, "current":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v0, :cond_0

    .line 1016
    const/4 v1, -0x1

    .line 1018
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    goto :goto_0
.end method

.method private getRecycledView(I)Landroid/view/View;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 694
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v3, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemViewType(I)I

    move-result v2

    .line 695
    .local v2, "viewType":I
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 696
    .local v0, "recycledViewsForType":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 697
    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 698
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "view":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 700
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    if-eqz v1, :cond_1

    .line 701
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 703
    :cond_1
    sget-object v4, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRecycledView, recycled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 704
    return-object v1

    .line 703
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hideZoomView()V
    .locals 2

    .prologue
    .line 1327
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->inZoomView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$1100(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    .line 1329
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 1331
    :cond_0
    return-void
.end method

.method private inFilmstrip()Z
    .locals 2

    .prologue
    .line 1604
    iget v0, p0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inFullScreen()Z
    .locals 2

    .prologue
    .line 1608
    iget v0, p0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inZoomView()Z
    .locals 2

    .prologue
    .line 1612
    iget v0, p0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Lcom/android/camera/CameraActivity;)V
    .locals 5
    .param p1, "cameraActivity"    # Lcom/android/camera/CameraActivity;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 615
    invoke-virtual {p0, v4}, Lcom/android/camera/widget/FilmstripView;->setWillNotDraw(Z)V

    .line 616
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView;->mActivity:Lcom/android/camera/CameraActivity;

    .line 617
    new-instance v1, Lcom/android/camera/widget/FilmstripView$PlayVideoIntent;

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/widget/FilmstripView$PlayVideoIntent;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mVideoClickedCallback:Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;

    .line 618
    iput v3, p0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    .line 619
    iput v4, p0, Lcom/android/camera/widget/FilmstripView;->mAdapterIndexUserIsScrollingOver:I

    .line 620
    new-instance v1, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;-><init>(Lcom/android/camera/widget/FilmstripView;)V

    iput-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    .line 621
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 622
    new-instance v1, Lcom/android/camera/ui/ZoomView;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/ZoomView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    .line 623
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 624
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/FilmstripView;->addView(Landroid/view/View;)V

    .line 626
    new-instance v1, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/widget/FilmstripView$FilmstripGestures;-><init>(Lcom/android/camera/widget/FilmstripView;Lcom/android/camera/widget/FilmstripView$1;)V

    iput-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mGestureListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    .line 627
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090237

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/widget/FilmstripView;->mSlop:I

    .line 628
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 629
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 634
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43700000    # 240.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/widget/FilmstripView;->mOverScaleFactor:F

    .line 635
    iget v1, p0, Lcom/android/camera/widget/FilmstripView;->mOverScaleFactor:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 636
    iput v3, p0, Lcom/android/camera/widget/FilmstripView;->mOverScaleFactor:F

    .line 639
    :cond_0
    new-instance v1, Lcom/android/camera/widget/FilmstripView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/FilmstripView$1;-><init>(Lcom/android/camera/widget/FilmstripView;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/FilmstripView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 678
    return-void
.end method

.method private isCurrentItemCentered()Z
    .locals 2

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    iget v1, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isItemAtIndexCentered(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 749
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return v0

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 753
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->isCurrentItemCentered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private layoutViewItems(Z)V
    .locals 17
    .param p1, "layoutChanged"    # Z

    .prologue
    .line 1134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    .line 1135
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    .line 1136
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-nez v13, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    if-eqz p1, :cond_2

    .line 1143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    .line 1144
    invoke-virtual {v15}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    .line 1143
    invoke-virtual {v13, v14}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setLeftPosition(I)V

    .line 1147
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/widget/FilmstripView;->inZoomView()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    const v15, 0x3f333333    # 0.7f

    sub-float/2addr v14, v15

    const v15, 0x3e99999a    # 0.3f

    div-float/2addr v14, v15

    invoke-interface {v13, v14}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v11

    .line 1157
    .local v11, "scaleFraction":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/FilmstripView;->mViewGapInPixel:I

    add-int v6, v13, v14

    .line 1163
    .local v6, "fullScreenWidth":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_3

    .line 1164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v13, v7

    .line 1165
    .local v1, "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v1, :cond_7

    .line 1175
    .end local v1    # "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_3
    const/4 v7, 0x3

    :goto_2
    const/4 v13, 0x5

    if-ge v7, v13, :cond_4

    .line 1176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v13, v7

    .line 1177
    .restart local v1    # "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v1, :cond_8

    .line 1189
    .end local v1    # "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_4
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v11, v13

    if-nez v13, :cond_b

    .line 1190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v14, 0x2

    aget-object v3, v13, v14

    .line 1191
    .local v3, "currItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    invoke-virtual {v3}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v2

    .line 1192
    .local v2, "currCenterX":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    if-ge v13, v2, :cond_9

    .line 1195
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/camera/widget/FilmstripView;->fadeAndScaleRightViewItem(I)V

    .line 1227
    .end local v2    # "currCenterX":I
    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-ltz v7, :cond_5

    .line 1228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v13, v7

    .line 1229
    .restart local v1    # "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v1, :cond_d

    .line 1236
    .end local v1    # "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_5
    const/4 v7, 0x3

    :goto_5
    const/4 v13, 0x5

    if-ge v7, v13, :cond_6

    .line 1237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v13, v7

    .line 1238
    .restart local v1    # "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v1, :cond_e

    .line 1277
    .end local v1    # "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/widget/FilmstripView;->stepIfNeeded()V

    goto/16 :goto_0

    .line 1170
    .end local v3    # "currItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    .restart local v1    # "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v14, v7, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v13

    .line 1171
    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/FilmstripView;->mViewGapInPixel:I

    sub-int v4, v13, v14

    .line 1172
    .local v4, "currLeft":I
    invoke-virtual {v1, v4}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setLeftPosition(I)V

    .line 1163
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1182
    .end local v4    # "currLeft":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v14, v7, -0x1

    aget-object v9, v13, v14

    .line 1184
    .local v9, "prev":Lcom/android/camera/widget/FilmstripView$ViewItem;
    invoke-virtual {v9}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v13

    invoke-virtual {v9}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/FilmstripView;->mViewGapInPixel:I

    add-int v4, v13, v14

    .line 1186
    .restart local v4    # "currLeft":I
    invoke-virtual {v1, v4}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setLeftPosition(I)V

    .line 1175
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1196
    .end local v1    # "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    .end local v4    # "currLeft":I
    .end local v9    # "prev":Lcom/android/camera/widget/FilmstripView$ViewItem;
    .restart local v2    # "currCenterX":I
    .restart local v3    # "currItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    if-le v13, v2, :cond_a

    .line 1199
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v11}, Lcom/android/camera/widget/FilmstripView;->translateLeftViewItem(IIF)V

    goto :goto_3

    .line 1201
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    invoke-virtual {v3, v13, v14, v15}, Lcom/android/camera/widget/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    .line 1202
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1203
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v3, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setAlpha(F)V

    goto :goto_3

    .line 1206
    .end local v2    # "currCenterX":I
    .end local v3    # "currItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v14, 0x2

    aget-object v3, v13, v14

    .line 1207
    .restart local v3    # "currItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 1210
    invoke-virtual {v3}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getTranslationX()F

    move-result v13

    mul-float/2addr v13, v11

    invoke-virtual {v3, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    invoke-virtual {v3, v13, v14, v15}, Lcom/android/camera/widget/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    if-nez v13, :cond_c

    .line 1213
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v3, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setAlpha(F)V

    goto/16 :goto_3

    .line 1215
    :cond_c
    invoke-virtual {v3}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v2

    .line 1216
    .restart local v2    # "currCenterX":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v10

    .line 1217
    .local v10, "prevCenterX":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    int-to-float v13, v13

    int-to-float v14, v10

    sub-float/2addr v13, v14

    sub-int v14, v2, v10

    int-to-float v14, v14

    div-float v5, v13, v14

    .line 1219
    .local v5, "fadeDownFraction":F
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v5

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v11

    mul-float/2addr v13, v14

    add-float/2addr v13, v5

    invoke-virtual {v3, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setAlpha(F)V

    goto/16 :goto_3

    .line 1232
    .end local v2    # "currCenterX":I
    .end local v5    # "fadeDownFraction":F
    .end local v10    # "prevCenterX":I
    .restart local v1    # "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6, v11}, Lcom/android/camera/widget/FilmstripView;->translateLeftViewItem(IIF)V

    .line 1227
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_4

    .line 1242
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    invoke-virtual {v1, v13, v14, v15}, Lcom/android/camera/widget/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    .line 1244
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v11, v13

    if-nez v13, :cond_f

    .line 1246
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/camera/widget/FilmstripView;->fadeAndScaleRightViewItem(I)V

    .line 1236
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 1248
    :cond_f
    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getVisibility()I

    move-result v13

    if-nez v13, :cond_12

    const/4 v8, 0x1

    .line 1249
    .local v8, "isVisible":Z
    :goto_7
    if-nez v8, :cond_13

    const/4 v12, 0x1

    .line 1251
    .local v12, "setToVisible":Z
    :goto_8
    const/4 v13, 0x3

    if-ne v7, v13, :cond_14

    .line 1254
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v11

    invoke-virtual {v1, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setAlpha(F)V

    .line 1268
    :cond_10
    :goto_9
    if-eqz v12, :cond_11

    if-nez v8, :cond_11

    .line 1269
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 1272
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v13

    .line 1273
    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    mul-float/2addr v13, v11

    .line 1272
    invoke-virtual {v1, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    goto :goto_6

    .line 1248
    .end local v8    # "isVisible":Z
    .end local v12    # "setToVisible":Z
    :cond_12
    const/4 v8, 0x0

    goto :goto_7

    .line 1249
    .restart local v8    # "isVisible":Z
    :cond_13
    const/4 v12, 0x0

    goto :goto_8

    .line 1256
    .restart local v12    # "setToVisible":Z
    :cond_14
    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-nez v13, :cond_15

    .line 1257
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v1, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setAlpha(F)V

    goto :goto_9

    .line 1261
    :cond_15
    const/4 v12, 0x0

    .line 1262
    if-eqz v8, :cond_10

    .line 1263
    const/4 v13, 0x4

    invoke-virtual {v1, v13}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setVisibility(I)V

    goto :goto_9
.end method

.method private measureViewItem(Lcom/android/camera/widget/FilmstripView$ViewItem;II)V
    .locals 7
    .param p1, "item"    # Lcom/android/camera/widget/FilmstripView$ViewItem;
    .param p2, "boundWidth"    # I
    .param p3, "boundHeight"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 760
    invoke-virtual {p1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v2

    .line 761
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v3, v2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 762
    .local v1, "imageData":Lcom/android/camera/data/FilmstripItem;
    if-nez v1, :cond_0

    .line 763
    sget-object v3, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "measureViewItem() - Trying to measure a null item!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 776
    :goto_0
    return-void

    .line 768
    :cond_0
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    .line 769
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    .line 770
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v5

    .line 767
    invoke-static {v3, v4, v5, p2, p3}, Lcom/android/camera/util/CameraUtil;->resizeToFill(IIIII)Landroid/graphics/Point;

    move-result-object v0

    .line 774
    .local v0, "dim":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 775
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 774
    invoke-virtual {p1, v3, v4}, Lcom/android/camera/widget/FilmstripView$ViewItem;->measure(II)V

    goto :goto_0
.end method

.method private onEnterFilmstrip()V
    .locals 2

    .prologue
    .line 1872
    sget-object v0, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onEnterFilmstrip()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1873
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->getCurrentItemAdapterIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onEnterFilmstrip(I)V

    .line 1876
    :cond_0
    return-void
.end method

.method private onEnterFullScreen()V
    .locals 2

    .prologue
    .line 1885
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView;->mFullScreenUIHidden:Z

    .line 1886
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->getCurrentItemAdapterIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onEnterFullScreenUiShown(I)V

    .line 1889
    :cond_0
    return-void
.end method

.method private onEnterFullScreenUiHidden()V
    .locals 2

    .prologue
    .line 1898
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView;->mFullScreenUIHidden:Z

    .line 1899
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->getCurrentItemAdapterIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onEnterFullScreenUiHidden(I)V

    .line 1902
    :cond_0
    return-void
.end method

.method private onEnterZoomView()V
    .locals 2

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->getCurrentItemAdapterIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onEnterZoomView(I)V

    .line 1915
    :cond_0
    return-void
.end method

.method private onLeaveFilmstrip()V
    .locals 2

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->getCurrentItemAdapterIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onLeaveFilmstrip(I)V

    .line 1882
    :cond_0
    return-void
.end method

.method private onLeaveFullScreen()V
    .locals 2

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->getCurrentItemAdapterIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onLeaveFullScreenUiShown(I)V

    .line 1895
    :cond_0
    return-void
.end method

.method private onLeaveFullScreenUiHidden()V
    .locals 2

    .prologue
    .line 1905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/FilmstripView;->mFullScreenUIHidden:Z

    .line 1906
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 1907
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->getCurrentItemAdapterIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onLeaveFullScreenUiHidden(I)V

    .line 1909
    :cond_0
    return-void
.end method

.method private onLeaveZoomView()V
    .locals 2

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$1200(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Z)V

    .line 1919
    return-void
.end method

.method private promoteData(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onFocusedDataPromoted(I)V

    .line 1863
    :cond_0
    return-void
.end method

.method private recycleView(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 681
    sget-object v2, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "recycleView"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 682
    const v2, 0x7f0f000b

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 683
    .local v1, "viewType":I
    if-lez v1, :cond_1

    .line 684
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 685
    .local v0, "recycledViewsForType":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 686
    new-instance v0, Ljava/util/ArrayDeque;

    .end local v0    # "recycledViewsForType":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 687
    .restart local v0    # "recycledViewsForType":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 689
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 691
    .end local v0    # "recycledViewsForType":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private reload()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 1806
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->stopScrolling(Z)Z

    .line 1807
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-static {v3}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$2000(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    .line 1808
    iput v5, p0, Lcom/android/camera/widget/FilmstripView;->mAdapterIndexUserIsScrollingOver:I

    .line 1810
    const/4 v2, -0x1

    .line 1811
    .local v2, "prevId":I
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v6

    if-eqz v3, :cond_0

    .line 1812
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v2

    .line 1816
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1817
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    .line 1816
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1820
    :cond_1
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/camera/widget/FilmstripView$ViewItem;->removeViewFromHierarchy()V

    goto :goto_1

    .line 1824
    :cond_2
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1825
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v3}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 1826
    .local v0, "dataNumber":I
    if-nez v0, :cond_4

    .line 1857
    :cond_3
    :goto_2
    return-void

    .line 1830
    :cond_4
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-direct {p0, v5}, Lcom/android/camera/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1831
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v6

    if-eqz v3, :cond_3

    .line 1834
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v6

    invoke-virtual {v3, v5}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setLeftPosition(I)V

    .line 1835
    const/4 v1, 0x3

    :goto_3
    const/4 v3, 0x5

    if-ge v1, v3, :cond_5

    .line 1836
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/camera/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1837
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v1

    if-nez v3, :cond_6

    .line 1844
    :cond_5
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    .line 1845
    const v3, 0x3f333333    # 0.7f

    iput v3, p0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    .line 1847
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->adjustChildZOrder()V

    .line 1849
    sget-object v3, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "reload() - Ensure all items are loaded at max size."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1850
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->renderAllThumbnails()V

    .line 1851
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->invalidate()V

    .line 1853
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v3, :cond_3

    .line 1854
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-interface {v3}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onDataReloaded()V

    .line 1855
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onDataFocusChanged(II)V

    goto :goto_2

    .line 1835
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private removeItem(I)V
    .locals 3
    .param p1, "bufferIndex"    # I

    .prologue
    .line 888
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v2, v2, p1

    .line 892
    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v2

    .line 891
    invoke-interface {v1, v2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 893
    .local v0, "data":Lcom/android/camera/data/FilmstripItem;
    if-nez v0, :cond_2

    .line 894
    sget-object v1, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "removeItem() - Trying to remove a null item!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 897
    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->removeViewFromHierarchy()V

    .line 898
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    goto :goto_0
.end method

.method private renderAllThumbnails()V
    .locals 2

    .prologue
    .line 882
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 883
    invoke-direct {p0, v0}, Lcom/android/camera/widget/FilmstripView;->renderThumbnail(I)V

    .line 882
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_0
    return-void
.end method

.method private renderFullRes(I)V
    .locals 0
    .param p1, "bufferIndex"    # I

    .prologue
    .line 862
    return-void
.end method

.method private renderThumbnail(I)V
    .locals 0
    .param p1, "bufferIndex"    # I

    .prologue
    .line 872
    return-void
.end method

.method private resetZoomView()V
    .locals 3

    .prologue
    .line 1310
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->inZoomView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 1314
    .local v0, "current":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v0, :cond_0

    .line 1317
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    .line 1318
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$900(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    .line 1319
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$1000(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    .line 1320
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->resetTransform()V

    .line 1321
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$1100(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;)V

    .line 1322
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 1323
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->access$1200(Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;Z)V

    goto :goto_0
.end method

.method private scrollCurrentItemToCenter()V
    .locals 6

    .prologue
    .line 1026
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v4, 0x2

    aget-object v0, v3, v4

    .line 1027
    .local v0, "currItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v0, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 1030
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v1

    .line 1031
    .local v1, "currentViewCenter":I
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-virtual {v3}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->isScrolling()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/widget/FilmstripView;->mIsUserScrolling:Z

    if-nez v3, :cond_1

    .line 1032
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->isCurrentItemCentered()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1033
    :cond_1
    sget-object v3, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[fling] mController.isScrolling() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-virtual {v5}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->isScrolling()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    :cond_2
    const/high16 v3, 0x44160000    # 600.0f

    iget v4, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    sub-int/2addr v4, v1

    .line 1038
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    .line 1039
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 1041
    .local v2, "snapInTime":I
    sget-object v3, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "[fling] Scroll to center."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1042
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->scrollToPosition(IIZ)V

    goto :goto_0
.end method

.method private setDataAdapter(Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .line 1562
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1564
    .local v0, "maxEdge":I
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v1, v0, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->suggestViewSizeBound(II)V

    .line 1565
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    new-instance v2, Lcom/android/camera/widget/FilmstripView$3;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/FilmstripView$3;-><init>(Lcom/android/camera/widget/FilmstripView;)V

    invoke-interface {v1, v2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->setListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V

    .line 1601
    return-void
.end method

.method private setListener(Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    .line 725
    return-void
.end method

.method private setViewGap(I)V
    .locals 0
    .param p1, "viewGap"    # I

    .prologue
    .line 728
    iput p1, p0, Lcom/android/camera/widget/FilmstripView;->mViewGapInPixel:I

    .line 729
    return-void
.end method

.method private slideViewBack(Lcom/android/camera/widget/FilmstripView$ViewItem;)V
    .locals 4
    .param p1, "item"    # Lcom/android/camera/widget/FilmstripView$ViewItem;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x190

    .line 1334
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->animateTranslationX(FJLandroid/animation/TimeInterpolator;)V

    .line 1335
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->animateTranslationY(FJLandroid/animation/TimeInterpolator;)V

    .line 1336
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->animateAlpha(FJLandroid/animation/TimeInterpolator;)V

    .line 1337
    return-void
.end method

.method private stepIfNeeded()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x5

    const/4 v4, -0x1

    const/4 v10, 0x2

    .line 906
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->inFilmstrip()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->inFullScreen()Z

    move-result v7

    if-nez v7, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget v7, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    invoke-direct {p0, v7}, Lcom/android/camera/widget/FilmstripView;->findTheNearestView(I)I

    move-result v3

    .line 914
    .local v3, "nearestBufferIndex":I
    if-eq v3, v4, :cond_0

    if-eq v3, v10, :cond_0

    .line 917
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v10

    if-nez v7, :cond_2

    .line 919
    .local v4, "prevIndex":I
    :goto_1
    add-int/lit8 v0, v3, -0x2

    .line 920
    .local v0, "adjust":I
    if-lez v0, :cond_9

    .line 922
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 923
    invoke-direct {p0, v2}, Lcom/android/camera/widget/FilmstripView;->removeItem(I)V

    .line 922
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 917
    .end local v0    # "adjust":I
    .end local v2    # "k":I
    .end local v4    # "prevIndex":I
    :cond_2
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v10

    .line 918
    invoke-virtual {v7}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v4

    goto :goto_1

    .line 926
    .restart local v0    # "adjust":I
    .restart local v2    # "k":I
    .restart local v4    # "prevIndex":I
    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int v7, v2, v0

    if-ge v7, v11, :cond_4

    .line 927
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int v9, v2, v0

    aget-object v8, v8, v9

    aput-object v8, v7, v2

    .line 926
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 930
    :cond_4
    rsub-int/lit8 v2, v0, 0x5

    :goto_4
    if-ge v2, v11, :cond_6

    .line 931
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aput-object v12, v7, v2

    .line 932
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    if-eqz v7, :cond_5

    .line 933
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/camera/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v8

    aput-object v8, v7, v2

    .line 930
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 936
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->adjustChildZOrder()V

    .line 954
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->invalidate()V

    .line 955
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v7, :cond_8

    .line 956
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v8, v8, v10

    .line 957
    invoke-virtual {v8}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v8

    .line 956
    invoke-interface {v7, v4, v8}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onDataFocusChanged(II)V

    .line 958
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v7

    add-int/lit8 v1, v7, -0x2

    .line 959
    .local v1, "firstVisible":I
    add-int/lit8 v6, v1, 0x5

    .line 960
    .local v6, "visibleItemCount":I
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v7}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v5

    .line 961
    .local v5, "totalItemCount":I
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-interface {v7, v1, v6, v5}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onScroll(III)V

    .line 963
    .end local v1    # "firstVisible":I
    .end local v5    # "totalItemCount":I
    .end local v6    # "visibleItemCount":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->zoomAtIndexChanged()V

    goto/16 :goto_0

    .line 939
    .end local v2    # "k":I
    :cond_9
    const/4 v2, 0x4

    .restart local v2    # "k":I
    :goto_5
    add-int/lit8 v7, v0, 0x5

    if-lt v2, v7, :cond_a

    .line 940
    invoke-direct {p0, v2}, Lcom/android/camera/widget/FilmstripView;->removeItem(I)V

    .line 939
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 943
    :cond_a
    const/4 v2, 0x4

    :goto_6
    add-int v7, v2, v0

    if-ltz v7, :cond_b

    .line 944
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int v9, v2, v0

    aget-object v8, v8, v9

    aput-object v8, v7, v2

    .line 943
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 947
    :cond_b
    rsub-int/lit8 v2, v0, -0x1

    :goto_7
    if-ltz v2, :cond_7

    .line 948
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aput-object v12, v7, v2

    .line 949
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v8, v2, 0x1

    aget-object v7, v7, v8

    if-eqz v7, :cond_c

    .line 950
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v9, v2, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v8}, Lcom/android/camera/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v8

    aput-object v8, v7, v2

    .line 947
    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_7
.end method

.method private translateLeftViewItem(IIF)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "drawAreaWidth"    # I
    .param p3, "scaleFraction"    # F

    .prologue
    .line 1060
    if-ltz p1, :cond_0

    const/4 v5, 0x4

    if-le p1, v5, :cond_1

    .line 1061
    :cond_0
    sget-object v5, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "translateLeftViewItem() - Index out of bound!"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1088
    :goto_0
    return-void

    .line 1065
    :cond_1
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v0, v5, p1

    .line 1066
    .local v0, "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v6, p1, 0x1

    aget-object v2, v5, v6

    .line 1067
    .local v2, "next":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    .line 1068
    :cond_2
    sget-object v5, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "translateLeftViewItem() - Invalid view item (curr or next == null). curr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1073
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v1

    .line 1074
    .local v1, "currCenterX":I
    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v3

    .line 1075
    .local v3, "nextCenterX":I
    sub-int v5, v3, p2

    sub-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v5, p3

    float-to-int v4, v5

    .line 1078
    .local v4, "translate":I
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    iget v7, p0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/camera/widget/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    .line 1079
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setAlpha(F)V

    .line 1080
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 1082
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->inFullScreen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1083
    iget v5, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    sub-int/2addr v5, v1

    mul-int/2addr v5, v4

    sub-int v6, v3, v1

    div-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    goto :goto_0

    .line 1086
    :cond_4
    int-to-float v5, v4

    invoke-virtual {v0, v5}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    goto :goto_0
.end method

.method private update(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 12
    .param p1, "reporter"    # Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;

    .prologue
    const/4 v8, 0x2

    .line 1735
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v8

    if-nez v7, :cond_0

    .line 1736
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->reload()V

    .line 1798
    :goto_0
    return-void

    .line 1741
    :cond_0
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v0, v7, v8

    .line 1742
    .local v0, "curr":Lcom/android/camera/widget/FilmstripView$ViewItem;
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v4

    .line 1743
    .local v4, "index":I
    invoke-interface {p1, v4}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;->isDataRemoved(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1744
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->reload()V

    goto :goto_0

    .line 1747
    :cond_1
    invoke-interface {p1, v4}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1748
    invoke-direct {p0, v8}, Lcom/android/camera/widget/FilmstripView;->updateViewItem(I)V

    .line 1749
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v7, v4}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 1750
    .local v1, "data":Lcom/android/camera/data/FilmstripItem;
    iget-boolean v7, p0, Lcom/android/camera/widget/FilmstripView;->mIsUserScrolling:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-virtual {v7}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->isScrolling()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1754
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v7

    .line 1755
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    .line 1756
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v9

    .line 1757
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->getMeasuredWidth()I

    move-result v10

    .line 1758
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->getMeasuredHeight()I

    move-result v11

    .line 1753
    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/camera/util/CameraUtil;->resizeToFill(IIIII)Landroid/graphics/Point;

    move-result-object v2

    .line 1759
    .local v2, "dim":Landroid/graphics/Point;
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v7

    iget v8, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/camera/widget/FilmstripView;->mCenterX:I

    .line 1764
    .end local v1    # "data":Lcom/android/camera/data/FilmstripItem;
    .end local v2    # "dim":Landroid/graphics/Point;
    :cond_2
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    .line 1765
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v0, v7, v3

    .line 1766
    if-eqz v0, :cond_5

    .line 1767
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v4

    .line 1768
    invoke-interface {p1, v4}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;->isDataRemoved(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {p1, v4}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1769
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/camera/widget/FilmstripView;->updateViewItem(I)V

    .line 1764
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1773
    :cond_5
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v8, v3, 0x1

    aget-object v5, v7, v8

    .line 1774
    .local v5, "next":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v5, :cond_4

    .line 1775
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-virtual {v5}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v8}, Lcom/android/camera/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v8

    aput-object v8, v7, v3

    goto :goto_2

    .line 1781
    .end local v5    # "next":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_6
    const/4 v3, 0x3

    :goto_3
    const/4 v7, 0x5

    if-ge v3, v7, :cond_a

    .line 1782
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v0, v7, v3

    .line 1783
    if-eqz v0, :cond_9

    .line 1784
    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v4

    .line 1785
    invoke-interface {p1, v4}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;->isDataRemoved(I)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {p1, v4}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1786
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/camera/widget/FilmstripView;->updateViewItem(I)V

    .line 1781
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1789
    :cond_9
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v8, v3, -0x1

    aget-object v6, v7, v8

    .line 1790
    .local v6, "prev":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v6, :cond_8

    .line 1791
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-virtual {v6}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/camera/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v8

    aput-object v8, v7, v3

    goto :goto_4

    .line 1795
    .end local v6    # "prev":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->adjustChildZOrder()V

    .line 1797
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->requestLayout()V

    goto/16 :goto_0
.end method

.method private updateInsertion(I)V
    .locals 14
    .param p1, "index"    # I

    .prologue
    const/4 v13, 0x4

    const/4 v9, -0x1

    const/4 v12, 0x2

    .line 1480
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->findItemInBufferByAdapterIndex(I)I

    move-result v0

    .line 1481
    .local v0, "bufferIndex":I
    if-ne v0, v9, :cond_0

    .line 1484
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v7}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_0

    .line 1485
    add-int/lit8 v7, p1, -0x1

    invoke-direct {p0, v7}, Lcom/android/camera/widget/FilmstripView;->findItemInBufferByAdapterIndex(I)I

    move-result v5

    .line 1486
    .local v5, "prev":I
    if-ltz v5, :cond_0

    if-ge v5, v13, :cond_0

    .line 1489
    add-int/lit8 v0, v5, 0x1

    .line 1495
    .end local v5    # "prev":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v3, v7, :cond_3

    .line 1496
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v3

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v7

    if-ge v7, p1, :cond_2

    .line 1495
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1499
    :cond_2
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v3

    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setIndex(I)V

    goto :goto_1

    .line 1501
    :cond_3
    if-ne v0, v9, :cond_5

    .line 1558
    :cond_4
    :goto_2
    return-void

    .line 1505
    :cond_5
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v7, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 1508
    .local v1, "data":Lcom/android/camera/data/FilmstripItem;
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v7

    .line 1509
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    .line 1510
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v9

    .line 1511
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->getMeasuredWidth()I

    move-result v10

    .line 1512
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->getMeasuredHeight()I

    move-result v11

    .line 1507
    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/camera/util/CameraUtil;->resizeToFill(IIIII)Landroid/graphics/Point;

    move-result-object v2

    .line 1513
    .local v2, "dim":Landroid/graphics/Point;
    iget v7, v2, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/android/camera/widget/FilmstripView;->mViewGapInPixel:I

    add-int v4, v7, v8

    .line 1514
    .local v4, "offsetX":I
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v6

    .line 1515
    .local v6, "viewItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v6, :cond_6

    .line 1516
    sget-object v7, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "unable to build inserted item from data"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    .line 1520
    :cond_6
    if-lt v0, v12, :cond_9

    .line 1521
    if-ne v0, v12, :cond_7

    .line 1522
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v12

    invoke-virtual {v7}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setLeftPosition(I)V

    .line 1525
    :cond_7
    invoke-direct {p0, v13}, Lcom/android/camera/widget/FilmstripView;->removeItem(I)V

    .line 1526
    const/4 v3, 0x4

    :goto_3
    if-le v3, v0, :cond_b

    .line 1527
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    iget-object v8, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v9, v3, -0x1

    aget-object v8, v8, v9

    aput-object v8, v7, v3

    .line 1528
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v3

    if-eqz v7, :cond_8

    .line 1529
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v3

    neg-int v8, v4

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1530
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v3

    invoke-direct {p0, v7}, Lcom/android/camera/widget/FilmstripView;->slideViewBack(Lcom/android/camera/widget/FilmstripView$ViewItem;)V

    .line 1526
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1536
    :cond_9
    add-int/lit8 v0, v0, -0x1

    .line 1537
    if-ltz v0, :cond_4

    .line 1540
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/camera/widget/FilmstripView;->removeItem(I)V

    .line 1541
    const/4 v3, 0x1

    :goto_4
    if-gt v3, v0, :cond_b

    .line 1542
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v3

    if-eqz v7, :cond_a

    .line 1543
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v3

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1544
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v3

    invoke-direct {p0, v7}, Lcom/android/camera/widget/FilmstripView;->slideViewBack(Lcom/android/camera/widget/FilmstripView$ViewItem;)V

    .line 1545
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    add-int/lit8 v8, v3, -0x1

    iget-object v9, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v9, v9, v3

    aput-object v9, v7, v8

    .line 1541
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1550
    :cond_b
    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aput-object v6, v7, v0

    .line 1551
    invoke-direct {p0, v0}, Lcom/android/camera/widget/FilmstripView;->renderThumbnail(I)V

    .line 1552
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setAlpha(F)V

    .line 1553
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setTranslationY(F)V

    .line 1554
    invoke-direct {p0, v6}, Lcom/android/camera/widget/FilmstripView;->slideViewBack(Lcom/android/camera/widget/FilmstripView$ViewItem;)V

    .line 1555
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->adjustChildZOrder()V

    .line 1557
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->invalidate()V

    goto/16 :goto_2
.end method

.method private updateViewItem(I)V
    .locals 8
    .param p1, "bufferIndex"    # I

    .prologue
    .line 1673
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v2, v5, p1

    .line 1674
    .local v2, "item":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-nez v2, :cond_1

    .line 1675
    sget-object v5, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "updateViewItem() - Trying to update an null item!"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v0

    .line 1680
    .local v0, "adapterIndex":I
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v5, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 1681
    .local v1, "filmstripItem":Lcom/android/camera/data/FilmstripItem;
    if-nez v1, :cond_2

    .line 1682
    sget-object v5, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "updateViewItem() - Trying to update item with null FilmstripItem!"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1686
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v3

    .line 1691
    .local v3, "oldFilmstripItem":Lcom/android/camera/data/FilmstripItem;
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1692
    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->access$800(Lcom/android/camera/widget/FilmstripView$ViewItem;)Landroid/view/View;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/camera/data/FilmstripItem;->recycle(Landroid/view/View;)V

    .line 1693
    invoke-virtual {v2, v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->setData(Lcom/android/camera/data/FilmstripItem;)V

    .line 1694
    sget-object v5, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "updateViewItem() - recycling old data item and setting new"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1705
    :goto_1
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mDataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripView$ViewItem;->access$800(Lcom/android/camera/widget/FilmstripView$ViewItem;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mVideoClickedCallback:Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;

    invoke-interface {v5, v6, v0, v7}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getView(Landroid/view/View;ILcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;

    .line 1707
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v5}, Lcom/android/camera/ui/ZoomView;->resetDecoder()V

    .line 1709
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->clampCenterX()Z

    move-result v4

    .line 1710
    .local v4, "stopScroll":Z
    if-eqz v4, :cond_3

    .line 1711
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->stopScrolling(Z)Z

    .line 1714
    :cond_3
    sget-object v5, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateViewItem(bufferIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1715
    sget-object v5, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateViewItem() - mIsUserScrolling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/camera/widget/FilmstripView;->mIsUserScrolling:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1716
    sget-object v5, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateViewItem() - mController.isScrolling() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-virtual {v7}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->isScrolling()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1721
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-virtual {v5}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->isScrolling()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/camera/widget/FilmstripView;->mIsUserScrolling:Z

    if-nez v5, :cond_5

    .line 1722
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->renderThumbnail(I)V

    .line 1725
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->adjustChildZOrder()V

    .line 1726
    invoke-virtual {p0}, Lcom/android/camera/widget/FilmstripView;->invalidate()V

    .line 1727
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v5, :cond_0

    .line 1728
    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-interface {v5, v0}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onDataUpdated(I)V

    goto/16 :goto_0

    .line 1696
    .end local v4    # "stopScroll":Z
    :cond_6
    sget-object v5, Lcom/android/camera/widget/FilmstripView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "updateViewItem() - updating data with the same item"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public getController()Lcom/android/camera/filmstrip/FilmstripController;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    return-object v0
.end method

.method public getCurrentItemLeft()I
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getDrawAreaLeft()I

    move-result v0

    return v0
.end method

.method getGestureListener()Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mGestureListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/FilmstripView;->layoutViewItems(Z)V

    .line 1284
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1285
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    if-nez v0, :cond_0

    .line 1661
    new-instance v0, Lcom/android/camera/ui/FilmstripGestureRecognizer;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView;->mGestureListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/FilmstripGestureRecognizer;-><init>(Landroid/content/Context;Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1665
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1617
    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView;->mController:Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    invoke-virtual {v4}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->isScrolling()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1646
    :cond_0
    :goto_0
    return v2

    .line 1621
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_2

    .line 1622
    iput-boolean v2, p0, Lcom/android/camera/widget/FilmstripView;->mCheckToIntercept:Z

    .line 1623
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/FilmstripView;->mDown:Landroid/view/MotionEvent;

    move v2, v3

    .line 1624
    goto :goto_0

    .line 1625
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 1627
    iput-boolean v3, p0, Lcom/android/camera/widget/FilmstripView;->mCheckToIntercept:Z

    move v2, v3

    .line 1628
    goto :goto_0

    .line 1630
    :cond_3
    iget-boolean v4, p0, Lcom/android/camera/widget/FilmstripView;->mCheckToIntercept:Z

    if-nez v4, :cond_4

    move v2, v3

    .line 1631
    goto :goto_0

    .line 1633
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    move v2, v3

    .line 1634
    goto :goto_0

    .line 1636
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 1637
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/widget/FilmstripView;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 1638
    .local v1, "deltaY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget v4, p0, Lcom/android/camera/widget/FilmstripView;->mSlop:I

    mul-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_6

    .line 1641
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_0

    :cond_6
    move v2, v3

    .line 1646
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 1289
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1290
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1291
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    sub-int v1, p4, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1292
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    sub-int v1, p5, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1293
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/ZoomView;->layout(IIII)V

    .line 1297
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->inZoomView()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 1298
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->resetZoomView()V

    .line 1299
    invoke-direct {p0, p1}, Lcom/android/camera/widget/FilmstripView;->layoutViewItems(Z)V

    .line 1301
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 780
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 782
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 783
    .local v1, "boundWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 784
    .local v0, "boundHeight":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-object v4, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, v4, v3

    .line 790
    .local v2, "item":Lcom/android/camera/widget/FilmstripView$ViewItem;
    if-eqz v2, :cond_2

    .line 791
    invoke-direct {p0, v2, v1, v0}, Lcom/android/camera/widget/FilmstripView;->measureViewItem(Lcom/android/camera/widget/FilmstripView$ViewItem;II)V

    .line 789
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 794
    .end local v2    # "item":Lcom/android/camera/widget/FilmstripView$ViewItem;
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/widget/FilmstripView;->clampCenterX()Z

    .line 796
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView;->mZoomView:Lcom/android/camera/ui/ZoomView;

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 797
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 796
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/ZoomView;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    if-nez v0, :cond_0

    .line 1652
    new-instance v0, Lcom/android/camera/ui/FilmstripGestureRecognizer;

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripView;->mGestureListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/FilmstripGestureRecognizer;-><init>(Landroid/content/Context;Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView;->mGestureRecognizer:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public zoomAtIndexChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 735
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mViewItems:[Lcom/android/camera/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/camera/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v0

    .line 739
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView;->mListener:Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    iget v2, p0, Lcom/android/camera/widget/FilmstripView;->mScale:F

    invoke-interface {v1, v0, v2}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onZoomAtIndexChanged(IF)V

    goto :goto_0
.end method
