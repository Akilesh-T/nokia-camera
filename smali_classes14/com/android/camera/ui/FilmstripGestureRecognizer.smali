.class public Lcom/android/camera/ui/FilmstripGestureRecognizer;
.super Ljava/lang/Object;
.source "FilmstripGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FilmstripGestureRecognizer$MyScaleListener;,
        Lcom/android/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;,
        Lcom/android/camera/ui/FilmstripGestureRecognizer$MyGestureListener;,
        Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FStripGestureRecog"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/FilmstripGestureRecognizer;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer;->mListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    .line 54
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/FilmstripGestureRecognizer;Lcom/android/camera/ui/FilmstripGestureRecognizer$1;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;-><init>(Lcom/android/camera/ui/FilmstripGestureRecognizer;Lcom/android/camera/ui/FilmstripGestureRecognizer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 57
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/FilmstripGestureRecognizer;Lcom/android/camera/ui/FilmstripGestureRecognizer$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 59
    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/FilmstripGestureRecognizer;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FilmstripGestureRecognizer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer;->mListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    return-object v0
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 74
    :pswitch_0
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 75
    .local v0, "hscroll":F
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 77
    .local v1, "vscroll":F
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer;->mListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    invoke-interface {v2, v0, v1}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onMouseScroll(FF)Z

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 62
    iget-object v2, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 63
    .local v0, "gestureProcessed":Z
    iget-object v2, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 64
    .local v1, "scaleProcessed":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer;->mListener:Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onUp(FF)Z

    .line 67
    :cond_0
    or-int v2, v0, v1

    return v2
.end method
