.class Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$1;
.super Ljava/lang/Object;
.source "MTKCameraExtension.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

.field final synthetic val$this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$1;->val$this$0:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    .line 271
    .local v10, "methodSpec":Ljava/lang/String;
    const-string v0, "onCapture"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v3, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

    aget-object v0, p3, v2

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v3, v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->access$600(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;[B)V

    .line 284
    :cond_0
    :goto_0
    return-object v1

    .line 274
    :cond_1
    const-string v0, "onFrame"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->access$700(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    array-length v0, p3

    new-array v6, v0, [I

    .line 277
    .local v6, "intArray":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, p3

    if-ge v9, v0, :cond_2

    .line 278
    aget-object v0, p3, v9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v9

    .line 277
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 281
    :cond_2
    const/4 v0, 0x1

    aget v5, v6, v0

    .line 282
    .local v5, "direction":I
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;->access$800(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;)Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    move-result-object v0

    move v3, v2

    move-object v4, v1

    move v7, v2

    move v8, v2

    invoke-interface/range {v0 .. v8}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V

    goto :goto_0
.end method
