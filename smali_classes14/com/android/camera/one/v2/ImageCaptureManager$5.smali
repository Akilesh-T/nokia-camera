.class Lcom/android/camera/one/v2/ImageCaptureManager$5;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"

# interfaces
.implements Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/ImageCaptureManager;->tryCaptureExistingImage(Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector",
        "<",
        "Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/ImageCaptureManager;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/ImageCaptureManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/ImageCaptureManager;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$5;->this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;)Z
    .locals 1
    .param p1, "image"    # Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    .prologue
    .line 644
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic select(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 641
    check-cast p1, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/ImageCaptureManager$5;->select(Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;)Z

    move-result v0

    return v0
.end method
