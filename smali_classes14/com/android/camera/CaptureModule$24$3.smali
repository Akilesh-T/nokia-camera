.class Lcom/android/camera/CaptureModule$24$3;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$24;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CaptureModule$24;

.field final synthetic val$slavePreviewImageReader:Landroid/media/ImageReader;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$24;Landroid/media/ImageReader;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CaptureModule$24;

    .prologue
    .line 2561
    iput-object p1, p0, Lcom/android/camera/CaptureModule$24$3;->this$1:Lcom/android/camera/CaptureModule$24;

    iput-object p2, p0, Lcom/android/camera/CaptureModule$24$3;->val$slavePreviewImageReader:Landroid/media/ImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 2564
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$3;->val$slavePreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 2565
    return-void
.end method
