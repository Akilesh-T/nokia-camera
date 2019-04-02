.class Lcom/android/camera/session/BurstCaptureSessionImpl$3;
.super Ljava/lang/Object;
.source "BurstCaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/BurstCaptureSessionImpl;->saveBurstImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

.field final synthetic val$dataSize:I


# direct methods
.method constructor <init>(Lcom/android/camera/session/BurstCaptureSessionImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/BurstCaptureSessionImpl;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    iput p2, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$3;->val$dataSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstMediaSaved(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$200(Lcom/android/camera/session/BurstCaptureSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$300(Lcom/android/camera/session/BurstCaptureSessionImpl;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$000(Lcom/android/camera/session/BurstCaptureSessionImpl;Landroid/content/ContentValues;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$100(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$100(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$3;->val$dataSize:I

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSession$ImageSavedListener;->onImageSaved(I)V

    .line 301
    :cond_1
    return-void

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$408(Lcom/android/camera/session/BurstCaptureSessionImpl;)J

    .line 298
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/BurstCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->access$300(Lcom/android/camera/session/BurstCaptureSessionImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
