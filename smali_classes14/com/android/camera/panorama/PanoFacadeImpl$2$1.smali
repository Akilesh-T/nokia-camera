.class Lcom/android/camera/panorama/PanoFacadeImpl$2$1;
.super Ljava/lang/Object;
.source "PanoFacadeImpl.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoFacadeImpl$2;->getPanoramaCallback()Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoFacadeImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/panorama/PanoFacadeImpl$2;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgOrientation()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->val$imageOrientationDegrees:I

    return v0
.end method

.method public onPanoramaCompleted()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onPanoramaFailed(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$2;-><init>(Lcom/android/camera/panorama/PanoFacadeImpl$2$1;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public onPanoramaPictureTaken([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 191
    return-void
.end method

.method public onPanoramaPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V
    .locals 11
    .param p1, "preview"    # Landroid/graphics/Bitmap;
    .param p2, "fullImgWidth"    # I
    .param p3, "fullImgHeight"    # I
    .param p4, "previewAttr"    # [I
    .param p5, "direction"    # I
    .param p6, "offset"    # [I
    .param p7, "progress"    # I
    .param p8, "totalPreviewLength"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v10, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;-><init>(Lcom/android/camera/panorama/PanoFacadeImpl$2$1;Landroid/graphics/Bitmap;II[II[III)V

    invoke-virtual {v10, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public onPanoramaStarted()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onPanoramaWarning(I)V
    .locals 2
    .param p1, "warning"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$1;-><init>(Lcom/android/camera/panorama/PanoFacadeImpl$2$1;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method
