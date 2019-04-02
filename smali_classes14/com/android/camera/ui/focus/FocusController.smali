.class public Lcom/android/camera/ui/focus/FocusController;
.super Ljava/lang/Object;
.source "FocusController.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$LensStateListener;
.implements Lcom/android/camera/ui/FaceView$OnFaceChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/focus/FocusController$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private final mFocusSound:Lcom/android/camera/ui/focus/FocusSound;

.field private mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

.field private final mMainThread:Lcom/android/camera/async/MainThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FocusController"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/focus/FocusController;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V
    .locals 0
    .param p1, "focusRing"    # Lcom/android/camera/ui/focus/FocusRing;
    .param p2, "faceView"    # Lcom/android/camera/ui/FaceView;
    .param p3, "focusSound"    # Lcom/android/camera/ui/focus/FocusSound;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "mainThread"    # Lcom/android/camera/async/MainThread;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 50
    iput-object p2, p0, Lcom/android/camera/ui/focus/FocusController;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 51
    iput-object p3, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusSound:Lcom/android/camera/ui/focus/FocusSound;

    .line 52
    iput-object p4, p0, Lcom/android/camera/ui/focus/FocusController;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/focus/FocusController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/FaceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/focus/FocusController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/camera/ui/focus/FocusController;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/focus/FocusController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method


# virtual methods
.method public OnFaceChanged(Z)V
    .locals 1
    .param p1, "hasFace"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_0

    .line 212
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->isPassiveFocusRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimations()V

    .line 217
    :cond_0
    return-void
.end method

.method public clearFocusIndicator()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/ui/focus/FocusController$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/focus/FocusController$4;-><init>(Lcom/android/camera/ui/focus/FocusController;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public configurePreviewDimensions(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/ui/focus/FocusController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/focus/FocusController$5;-><init>(Lcom/android/camera/ui/focus/FocusController;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method public onFocusDistance(FLcom/android/camera/ui/motion/LinearScale;)V
    .locals 1
    .param p1, "lensDistance"    # F
    .param p2, "lensRange"    # Lcom/android/camera/ui/motion/LinearScale;

    .prologue
    .line 192
    invoke-virtual {p2, p1}, Lcom/android/camera/ui/motion/LinearScale;->isInDomain(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p2, p1}, Lcom/android/camera/ui/motion/LinearScale;->scale(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/focus/FocusController;->setFocusRatio(F)V

    .line 195
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusSound:Lcom/android/camera/ui/focus/FocusSound;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusSound:Lcom/android/camera/ui/focus/FocusSound;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusSound;->release()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/focus/FocusRing;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/focus/FocusRing;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 205
    :cond_1
    iput-object v1, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .line 206
    return-void
.end method

.method public setFocusRatio(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/ui/focus/FocusController$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/focus/FocusController$6;-><init>(Lcom/android/camera/ui/focus/FocusController;F)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusStateProvider:Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/focus/FocusRing;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 60
    :cond_0
    return-void
.end method

.method public setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/focus/FocusRing;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 66
    :cond_0
    return-void
.end method

.method public showActiveFocusAt(II)V
    .locals 2
    .param p1, "viewX"    # I
    .param p2, "viewY"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/ui/focus/FocusController$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/ui/focus/FocusController$3;-><init>(Lcom/android/camera/ui/focus/FocusController;II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public showPassiveFocusAt(II)V
    .locals 2
    .param p1, "viewX"    # I
    .param p2, "viewY"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/ui/focus/FocusController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/ui/focus/FocusController$2;-><init>(Lcom/android/camera/ui/focus/FocusController;II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public showPassiveFocusAtCenter()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/ui/focus/FocusController$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/focus/FocusController$1;-><init>(Lcom/android/camera/ui/focus/FocusController;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method
