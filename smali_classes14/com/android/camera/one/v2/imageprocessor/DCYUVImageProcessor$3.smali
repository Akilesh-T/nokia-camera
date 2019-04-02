.class Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;
.super Ljava/lang/Object;
.source "DCYUVImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->onSuccess(Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

.field final synthetic val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    iget-object v1, v1, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mCameraType:Lcom/android/camera/one/CameraType;

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    iget-object v2, v2, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mDualSightCamType:Lcom/android/camera/one/DualSightCamType;

    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    iget v3, v3, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mIndex:I

    iget-object v4, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    iget-object v4, v4, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mImageData:[B

    iget-object v5, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v5}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$500(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->addFrame(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    iget v0, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mIndex:I

    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v1}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$600(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onCaptureFinish()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageEngine.addFrame : CameraType =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    iget-object v2, v2, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mCameraType:Lcom/android/camera/one/CameraType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DualSightCamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    iget-object v2, v2, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mDualSightCamType:Lcom/android/camera/one/DualSightCamType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    iget v2, v2, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 164
    return-void

    .line 160
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
