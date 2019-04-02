.class public Lcom/android/camera/captureintent/state/StateReviewingPicture;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateReviewingPicture.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mIsBackPressed:Z

.field private mIsReviewingThumbnail:Z

.field private mPictureBitmap:Landroid/graphics/Bitmap;

.field private mPictureData:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<[B>;"
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

.field private mShouldFinishWhenReceivePictureData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StateReviewPic"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Landroid/graphics/Bitmap;Lcom/google/common/base/Optional;)V
    .locals 2
    .param p1, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .param p3, "pictureBitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceCaptureTools;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Lcom/google/common/base/Optional",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p2, "resourceCaptureTools":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceCaptureTools;>;"
    .local p4, "pictureData":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<[B>;"
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 68
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mIsBackPressed:Z

    .line 85
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    .line 86
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 87
    iput-object p3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mPictureBitmap:Landroid/graphics/Bitmap;

    .line 88
    iput-object p4, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mPictureData:Lcom/google/common/base/Optional;

    .line 89
    invoke-virtual {p4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mIsReviewingThumbnail:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mShouldFinishWhenReceivePictureData:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mIsBackPressed:Z

    .line 92
    invoke-direct {p0}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->registerEventHandlers()V

    .line 93
    return-void

    :cond_0
    move v0, v1

    .line 89
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/android/camera/async/RefCountBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mIsBackPressed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/captureintent/state/StateReviewingPicture;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mIsBackPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mPictureData:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/captureintent/state/StateReviewingPicture;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;
    .param p1, "x1"    # Lcom/google/common/base/Optional;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mPictureData:Lcom/google/common/base/Optional;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mShouldFinishWhenReceivePictureData:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/captureintent/state/StateReviewingPicture;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mShouldFinishWhenReceivePictureData:Z

    return p1
.end method

.method static synthetic access$400()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mPictureBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/captureintent/state/StateReviewingPicture;Landroid/graphics/Bitmap;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->getBytesFromBitmapChunk(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/captureintent/state/StateReviewingPicture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mIsReviewingThumbnail:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/captureintent/state/StateReviewingPicture;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->showPicture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static from(Lcom/android/camera/captureintent/state/StateReadyForCapture;Lcom/android/camera/async/RefCountBase;Landroid/graphics/Bitmap;Lcom/google/common/base/Optional;)Lcom/android/camera/captureintent/state/StateReviewingPicture;
    .locals 1
    .param p0, "readyForCapture"    # Lcom/android/camera/captureintent/state/StateReadyForCapture;
    .param p2, "pictureBitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/state/StateReadyForCapture;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceCaptureTools;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Lcom/google/common/base/Optional",
            "<[B>;)",
            "Lcom/android/camera/captureintent/state/StateReviewingPicture;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "resourceCaptureTools":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceCaptureTools;>;"
    .local p3, "pictureData":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<[B>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/captureintent/state/StateReviewingPicture;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Landroid/graphics/Bitmap;Lcom/google/common/base/Optional;)V

    return-object v0
.end method

.method private getBytesFromBitmapChunk(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 97
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .local v1, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 99
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 100
    .local v0, "array":[B
    return-object v0
.end method

.method private registerEventHandlers()V
    .locals 10

    .prologue
    .line 106
    new-instance v2, Lcom/android/camera/captureintent/state/StateReviewingPicture$1;

    invoke-direct {v2, p0}, Lcom/android/camera/captureintent/state/StateReviewingPicture$1;-><init>(Lcom/android/camera/captureintent/state/StateReviewingPicture;)V

    .line 115
    .local v2, "pauseHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventPause;>;"
    const-class v9, Lcom/android/camera/captureintent/event/EventPause;

    invoke-virtual {p0, v9, v2}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 118
    new-instance v0, Lcom/android/camera/captureintent/state/StateReviewingPicture$2;

    invoke-direct {v0, p0}, Lcom/android/camera/captureintent/state/StateReviewingPicture$2;-><init>(Lcom/android/camera/captureintent/state/StateReviewingPicture;)V

    .line 125
    .local v0, "backPressEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnBackPress;>;"
    const-class v9, Lcom/android/camera/captureintent/event/EventOnBackPress;

    invoke-virtual {p0, v9, v0}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 128
    new-instance v1, Lcom/android/camera/captureintent/state/StateReviewingPicture$3;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateReviewingPicture$3;-><init>(Lcom/android/camera/captureintent/state/StateReviewingPicture;)V

    .line 137
    .local v1, "onTextureViewLayoutChangedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;>;"
    const-class v9, Lcom/android/camera/captureintent/event/EventOnTextureViewLayoutChanged;

    invoke-virtual {p0, v9, v1}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 140
    new-instance v6, Lcom/android/camera/captureintent/state/StateReviewingPicture$4;

    invoke-direct {v6, p0}, Lcom/android/camera/captureintent/state/StateReviewingPicture$4;-><init>(Lcom/android/camera/captureintent/state/StateReviewingPicture;)V

    .line 149
    .local v6, "tapOnCancelIntentButtonHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnCancelIntentButton;>;"
    const-class v9, Lcom/android/camera/captureintent/event/EventTapOnCancelIntentButton;

    invoke-virtual {p0, v9, v6}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 152
    new-instance v7, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;

    invoke-direct {v7, p0}, Lcom/android/camera/captureintent/state/StateReviewingPicture$5;-><init>(Lcom/android/camera/captureintent/state/StateReviewingPicture;)V

    .line 182
    .local v7, "tapOnConfirmPhotoButtonHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;>;"
    const-class v9, Lcom/android/camera/captureintent/event/EventTapOnConfirmButton;

    invoke-virtual {p0, v9, v7}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 185
    new-instance v8, Lcom/android/camera/captureintent/state/StateReviewingPicture$6;

    invoke-direct {v8, p0}, Lcom/android/camera/captureintent/state/StateReviewingPicture$6;-><init>(Lcom/android/camera/captureintent/state/StateReviewingPicture;)V

    .line 193
    .local v8, "tapOnRetakePhotoButtonHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;>;"
    const-class v9, Lcom/android/camera/captureintent/event/EventTapOnRetakeButton;

    invoke-virtual {p0, v9, v8}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 196
    new-instance v3, Lcom/android/camera/captureintent/state/StateReviewingPicture$7;

    invoke-direct {v3, p0}, Lcom/android/camera/captureintent/state/StateReviewingPicture$7;-><init>(Lcom/android/camera/captureintent/state/StateReviewingPicture;)V

    .line 236
    .local v3, "pictureCompressedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventPictureCompressed;>;"
    const-class v9, Lcom/android/camera/captureintent/event/EventPictureCompressed;

    invoke-virtual {p0, v9, v3}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 239
    new-instance v4, Lcom/android/camera/captureintent/state/StateReviewingPicture$8;

    invoke-direct {v4, p0}, Lcom/android/camera/captureintent/state/StateReviewingPicture$8;-><init>(Lcom/android/camera/captureintent/state/StateReviewingPicture;)V

    .line 248
    .local v4, "pictureDecodedHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventPictureDecoded;>;"
    const-class v9, Lcom/android/camera/captureintent/event/EventPictureDecoded;

    invoke-virtual {p0, v9, v4}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 251
    new-instance v5, Lcom/android/camera/captureintent/state/StateReviewingPicture$9;

    invoke-direct {v5, p0}, Lcom/android/camera/captureintent/state/StateReviewingPicture$9;-><init>(Lcom/android/camera/captureintent/state/StateReviewingPicture;)V

    .line 261
    .local v5, "retrieveVideoInfoEventHandler":Lcom/android/camera/captureintent/stateful/EventHandler;, "Lcom/android/camera/captureintent/stateful/EventHandler<Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;>;"
    const-class v9, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;

    invoke-virtual {p0, v9, v5}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/captureintent/stateful/EventHandler;)V

    .line 262
    return-void
.end method

.method private showPicture(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mPictureBitmap:Landroid/graphics/Bitmap;

    .line 278
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getMainThread()Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/state/StateReviewingPicture$10;

    invoke-direct {v1, p0}, Lcom/android/camera/captureintent/state/StateReviewingPicture$10;-><init>(Lcom/android/camera/captureintent/state/StateReviewingPicture;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 284
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
    .line 266
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mPictureBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->showPicture(Landroid/graphics/Bitmap;)V

    .line 267
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

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

    .line 268
    sget-object v0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->NO_CHANGE:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture;->mResourceCaptureTools:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 274
    return-void
.end method
