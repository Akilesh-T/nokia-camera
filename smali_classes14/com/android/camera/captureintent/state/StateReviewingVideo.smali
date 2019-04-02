.class public Lcom/android/camera/captureintent/state/StateReviewingVideo;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateReviewingVideo.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mIsBackPressed:Z

.field private mIsReviewingThumbnail:Z

.field private mMimeType:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mPath:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceCaptureTools;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoBitmap:Landroid/graphics/Bitmap;

.field private mVideoUri:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StateReviewVideo"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Landroid/graphics/Bitmap;ILcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
    .locals 2
    .param p1, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .param p3, "videoBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceCaptureTools;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "resourceCaptureTools":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceCaptureTools;>;"
    .local p5, "uri":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/net/Uri;>;"
    .local p6, "path":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    .local p7, "mimeType":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 60
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mIsBackPressed:Z

    .line 83
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 84
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 85
    iput-object p3, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mVideoBitmap:Landroid/graphics/Bitmap;

    .line 86
    iput p4, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mOrientation:I

    .line 87
    iput-object p5, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mVideoUri:Lcom/google/common/base/Optional;

    .line 88
    iput-object p6, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mPath:Lcom/google/common/base/Optional;

    .line 89
    iput-object p7, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mMimeType:Lcom/google/common/base/Optional;

    .line 90
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mVideoUri:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mIsReviewingThumbnail:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mIsBackPressed:Z

    .line 92
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->registerEventHandlers()V

    .line 93
    return-void

    :cond_0
    move v0, v1

    .line 90
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mIsBackPressed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/captureintent/state/StateReviewingVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mIsBackPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->deleteCurrentVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mVideoUri:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mVideoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/captureintent/state/StateReviewingVideo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mPath:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mMimeType:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method private deleteCurrentVideo()V
    .locals 6

    .prologue
    .line 206
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mPath:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mPath:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    sget-object v2, Lcom/android/camera/captureintent/state/StateReviewingVideo;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This path is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 212
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    sget-object v3, Lcom/android/camera/captureintent/state/StateReviewingVideo;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abandoned video file deleted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mPath:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static from(Lcom/android/camera/captureintent/state/StateReadyForRecord;Lcom/android/camera/async/RefCountBase;Landroid/graphics/Bitmap;ILcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Lcom/android/camera/captureintent/state/StateReviewingVideo;
    .locals 8
    .param p0, "readyForRecord"    # Lcom/android/camera/captureintent/state/StateReadyForRecord;
    .param p2, "videoBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/state/StateReadyForRecord;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceCaptureTools;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/camera/captureintent/state/StateReviewingVideo;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "resourceCaptureTools":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceCaptureTools;>;"
    .local p4, "uri":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/net/Uri;>;"
    .local p5, "path":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    .local p6, "mimeType":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateReviewingVideo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/captureintent/state/StateReviewingVideo;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Landroid/graphics/Bitmap;ILcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V

    return-object v0
.end method

.method private registerEventHandlers()V
    .locals 8

    .prologue
    .line 97
    new-instance v2, Lcom/android/camera/captureintent/state/StateReviewingVideo$1;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateReviewingVideo$1;-><init>(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V

    .line 106
    .local v2, "pauseHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventPause;>;"
    const-class v7, Lcom/android/camera/captureintent/event/EventPause;

    invoke-virtual {p0, v7, v2}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 109
    new-instance v0, Lcom/android/camera/captureintent/state/StateReviewingVideo$2;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReviewingVideo$2;-><init>(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V

    .line 117
    .local v0, "backPressEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnBackPress;>;"
    const-class v7, Lcom/android/camera/captureintent/event/EventOnBackPress;

    invoke-virtual {p0, v7, v0}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 120
    new-instance v1, Lcom/android/camera/captureintent/state/StateReviewingVideo$3;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateReviewingVideo$3;-><init>(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V

    .line 129
    .local v1, "onTextureViewLayoutChangedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;>;"
    const-class v7, Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;

    invoke-virtual {p0, v7, v1}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 132
    new-instance v4, Lcom/android/camera/captureintent/state/StateReviewingVideo$4;

    invoke-direct {v4, p0}, Lcom/android/camera/captureintent/state/StateReviewingVideo$4;-><init>(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V

    .line 141
    .local v4, "tapOnCancelIntentButtonHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnCancelIntentButton;>;"
    const-class v7, Lcom/android/camera/captureintent/event/EventTapOnCancelIntentButton;

    invoke-virtual {p0, v7, v4}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 144
    new-instance v5, Lcom/android/camera/captureintent/state/StateReviewingVideo$5;

    invoke-direct {v5, p0}, Lcom/android/camera/captureintent/state/StateReviewingVideo$5;-><init>(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V

    .line 154
    .local v5, "tapOnConfirmPhotoButtonHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;>;"
    const-class v7, Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;

    invoke-virtual {p0, v7, v5}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 157
    new-instance v6, Lcom/android/camera/captureintent/state/StateReviewingVideo$6;

    invoke-direct {v6, p0}, Lcom/android/camera/captureintent/state/StateReviewingVideo$6;-><init>(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V

    .line 166
    .local v6, "tapOnRetakePhotoButtonHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;>;"
    const-class v7, Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;

    invoke-virtual {p0, v7, v6}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 169
    new-instance v3, Lcom/android/camera/captureintent/state/StateReviewingVideo$7;

    invoke-direct {v3, p0}, Lcom/android/camera/captureintent/state/StateReviewingVideo$7;-><init>(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V

    .line 179
    .local v3, "retrieveVideoInfoEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;>;"
    const-class v7, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;

    invoke-virtual {p0, v7, v3}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 180
    return-void
.end method

.method private showVideo(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mVideoBitmap:Landroid/graphics/Bitmap;

    .line 197
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/state/StateReviewingVideo$8;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateReviewingVideo$8;-><init>(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method


# virtual methods
.method public onEnter()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mVideoBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->showVideo(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getCaptureDataKeeper()Lcom/android/camera/captureintent/CaptureDataKeeper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/captureintent/CaptureDataKeeper;->clearCaptureData()V

    .line 186
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getResourceConstructed()Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->onRecordingStoped()V

    .line 187
    sget-object v0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 193
    return-void
.end method
