.class Lcom/android/camera/session/BurstCaptureSessionImpl$1;
.super Ljava/lang/Object;
.source "BurstCaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/BurstCaptureSessionImpl;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

.field final synthetic val$dataSize:I

.field final synthetic val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/session/BurstCaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/BurstCaptureSessionImpl;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$1;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    iput-object p2, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$1;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    iput p3, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$1;->val$dataSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstMediaSaved(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$1;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    iget-object v1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$1;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0, p1, v1}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$000(Lcom/android/camera/session/BurstCaptureSessionImpl;Landroid/content/ContentValues;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$1;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$100(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$1;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$100(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$1;->val$dataSize:I

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSession$ImageSavedListener;->onImageSaved(I)V

    .line 245
    :cond_0
    return-void
.end method
