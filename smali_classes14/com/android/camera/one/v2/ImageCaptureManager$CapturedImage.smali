.class Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/ImageCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapturedImage"
.end annotation


# instance fields
.field private mImage:Landroid/media/Image;

.field private mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

.field final synthetic this$0:Lcom/android/camera/one/v2/ImageCaptureManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/ImageCaptureManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mImage:Landroid/media/Image;

    .line 147
    iput-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/ImageCaptureManager;Lcom/android/camera/one/v2/ImageCaptureManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/one/v2/ImageCaptureManager;
    .param p2, "x1"    # Lcom/android/camera/one/v2/ImageCaptureManager$1;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;-><init>(Lcom/android/camera/one/v2/ImageCaptureManager;)V

    return-void
.end method


# virtual methods
.method public addImage(Landroid/media/Image;)V
    .locals 2
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to add an Image when one already exists."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mImage:Landroid/media/Image;

    .line 187
    return-void
.end method

.method public addMetadata(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "metadata"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to add a TotalCaptureResult when one already exists."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    .line 209
    return-void
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 156
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

    invoke-static {v0}, Lcom/android/camera/one/v2/ImageCaptureManager;->access$000(Lcom/android/camera/one/v2/ImageCaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 162
    :cond_0
    iput-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mImage:Landroid/media/Image;

    .line 164
    iput-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    .line 165
    return-void
.end method

.method public tryGetImage()Landroid/media/Image;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mImage:Landroid/media/Image;

    return-object v0
.end method

.method public tryGetMetadata()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    return-object v0
.end method

.method public tryGetTimestamp()J
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    .line 229
    :goto_0
    return-wide v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v1, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 229
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
