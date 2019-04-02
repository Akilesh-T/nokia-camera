.class Lcom/android/camera/one/v2/ImageCaptureManager$2;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/ImageCaptureManager;->updateMetadataChangeListeners(Landroid/hardware/camera2/CaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

.field final synthetic val$key:Landroid/hardware/camera2/CaptureResult$Key;

.field final synthetic val$listener:Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;

.field final synthetic val$newValue:Ljava/lang/Object;

.field final synthetic val$oldValue:Ljava/lang/Object;

.field final synthetic val$result:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/ImageCaptureManager;Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/lang/Object;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/ImageCaptureManager;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$2;->this$0:Lcom/android/camera/one/v2/ImageCaptureManager;

    iput-object p2, p0, Lcom/android/camera/one/v2/ImageCaptureManager$2;->val$listener:Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;

    iput-object p3, p0, Lcom/android/camera/one/v2/ImageCaptureManager$2;->val$key:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object p4, p0, Lcom/android/camera/one/v2/ImageCaptureManager$2;->val$oldValue:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/camera/one/v2/ImageCaptureManager$2;->val$newValue:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/camera/one/v2/ImageCaptureManager$2;->val$result:Landroid/hardware/camera2/CaptureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager$2;->val$listener:Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;

    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager$2;->val$key:Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v2, p0, Lcom/android/camera/one/v2/ImageCaptureManager$2;->val$oldValue:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/one/v2/ImageCaptureManager$2;->val$newValue:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/one/v2/ImageCaptureManager$2;->val$result:Landroid/hardware/camera2/CaptureResult;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;->onImageMetadataChange(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/lang/Object;Landroid/hardware/camera2/CaptureResult;)V

    .line 456
    return-void
.end method
