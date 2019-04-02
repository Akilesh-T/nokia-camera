.class Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;
.super Lcom/android/camera/processing/imagebackend/TaskJpegEncode;
.source "TaskChainedCompressImageToJpeg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;

.field final synthetic val$chainedDataCopy:[B

.field final synthetic val$chainedStrides:[I

.field final synthetic val$inputImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

.field final synthetic val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;Lcom/android/camera/processing/imagebackend/TaskImageContainer;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;[BLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[ILcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;
    .param p2, "otherTask"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    .param p3, "processingPriority"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;

    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->val$chainedDataCopy:[B

    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iput-object p6, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->val$chainedStrides:[I

    iput-object p7, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->val$inputImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;-><init>(Lcom/android/camera/processing/imagebackend/TaskImageContainer;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->val$chainedDataCopy:[B

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v1, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v2, v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->val$chainedStrides:[I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->convertNv21toJpeg([BII[I)[B

    move-result-object v6

    .line 91
    .local v6, "compressedData":[B
    iget-wide v2, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->mId:J

    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->val$inputImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v5, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    sget-object v7, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->onJpegEncodeDone(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[BLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;

    const-string v1, "Finished off a chained task now that image is released."

    invoke-static {v0, v1}, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->access$000(Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;Ljava/lang/String;)V

    .line 94
    return-void
.end method
