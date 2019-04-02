.class Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;
.super Ljava/lang/Object;
.source "DualSightImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->onSuccess(Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

.field final synthetic val$result:Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;

    iget-object v2, v2, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mDualSightCamType:Lcom/android/camera/one/DualSightCamType;

    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;

    iget-object v3, v3, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mDualSightCamType:Lcom/android/camera/one/DualSightCamType;

    invoke-virtual {v3}, Lcom/android/camera/one/DualSightCamType;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;

    iget-object v4, v4, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mImageData:[B

    iget-object v5, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v5}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$500(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->addFrame(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onCaptureFinish()V

    .line 172
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageEngine.addFrame = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;

    iget-object v2, v2, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->mDualSightCamType:Lcom/android/camera/one/DualSightCamType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 173
    return-void

    .line 170
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
