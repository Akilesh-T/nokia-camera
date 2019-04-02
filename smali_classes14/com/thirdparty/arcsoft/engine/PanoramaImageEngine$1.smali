.class Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;
.super Ljava/lang/Object;
.source "PanoramaImageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

.field final synthetic val$direction:[I

.field final synthetic val$imageAttr:[I

.field final synthetic val$offset:[I

.field final synthetic val$previewData:[B

.field final synthetic val$progress:[I

.field final synthetic val$totalLength:[I


# direct methods
.method constructor <init>(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;[B[I[I[I[I[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    iput-object p2, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$previewData:[B

    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$imageAttr:[I

    iput-object p4, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$direction:[I

    iput-object p5, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$offset:[I

    iput-object p6, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$progress:[I

    iput-object p7, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$totalLength:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 219
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->access$000(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 231
    :goto_0
    return-void

    .line 221
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 223
    :try_start_1
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->access$100(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 221
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 224
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$previewData:[B

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$imageAttr:[I

    aget v1, v1, v10

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$imageAttr:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$imageAttr:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/util/YuvToJpeg;->transPanoByteData([BIII)[B

    move-result-object v9

    .line 227
    .local v9, "jpegPreviewData":[B
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    invoke-static {v0, v9}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->access$202(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;[B)[B

    .line 228
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$imageAttr:[I

    invoke-static {v0, v1}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->access$302(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;[I)[I

    .line 230
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->access$600(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;)Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$imageAttr:[I

    aget v1, v1, v10

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$imageAttr:[I

    aget v2, v2, v5

    mul-int/2addr v1, v2

    invoke-static {v9, v1}, Lcom/android/camera/util/CameraUtil;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    invoke-static {v2}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->access$400(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;)I

    move-result v2

    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->this$0:Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    invoke-static {v3}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->access$500(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;)I

    move-result v3

    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$imageAttr:[I

    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$direction:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$offset:[I

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$progress:[I

    aget v7, v7, v10

    iget-object v8, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;->val$totalLength:[I

    aget v8, v8, v10

    invoke-interface/range {v0 .. v8}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V

    goto :goto_0
.end method
