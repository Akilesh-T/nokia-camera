.class Lcom/android/camera/one/v2/ImageCaptureManager$8;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"

# interfaces
.implements Lcom/android/camera/util/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/ImageCaptureManager;->closeBuffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/util/Task",
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
    .line 763
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$8;->this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;)V
    .locals 0
    .param p1, "e"    # Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    .prologue
    .line 766
    invoke-virtual {p1}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->reset()V

    .line 767
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 763
    check-cast p1, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/ImageCaptureManager$8;->run(Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;)V

    return-void
.end method
