.class Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;
.super Ljava/lang/Object;
.source "PictureCallbackAdapter.java"


# instance fields
.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mPictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCamera$PictureCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "pictureCallback"    # Lcom/android/camera/one/OneCamera$PictureCallback;
    .param p2, "mainExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;->mPictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

    .line 40
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)Lcom/android/camera/one/OneCamera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;->mPictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public providePictureSavedUpdatable()Lcom/android/camera/async/Updatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$4;-><init>(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)V

    return-object v0
.end method

.method public providePictureTakenUpdatable()Lcom/android/camera/async/Updatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/session/CaptureSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$3;-><init>(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)V

    return-object v0
.end method

.method public providePictureTakingFailedUpdatable()Lcom/android/camera/async/Updatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$5;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$5;-><init>(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)V

    return-object v0
.end method

.method public providePictureTakingProgressUpdatable()Lcom/android/camera/async/Updatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$6;-><init>(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)V

    return-object v0
.end method

.method public provideQuickExposeUpdatable()Lcom/android/camera/async/Updatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;-><init>(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)V

    return-object v0
.end method

.method public provideThumbnailUpdatable()Lcom/android/camera/async/Updatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Updatable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$2;-><init>(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)V

    return-object v0
.end method
