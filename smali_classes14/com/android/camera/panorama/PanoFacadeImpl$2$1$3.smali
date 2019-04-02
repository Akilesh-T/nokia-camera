.class Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;
.super Ljava/lang/Object;
.source "PanoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->onPanoramaPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

.field final synthetic val$direction:I

.field final synthetic val$fullImgHeight:I

.field final synthetic val$fullImgWidth:I

.field final synthetic val$offset:[I

.field final synthetic val$preview:Landroid/graphics/Bitmap;

.field final synthetic val$previewAttr:[I

.field final synthetic val$progress:I

.field final synthetic val$totalPreviewLength:I


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoFacadeImpl$2$1;Landroid/graphics/Bitmap;II[II[III)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    iput-object p2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$preview:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$fullImgWidth:I

    iput p4, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$fullImgHeight:I

    iput-object p5, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$previewAttr:[I

    iput p6, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$direction:I

    iput-object p7, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$offset:[I

    iput p8, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$progress:I

    iput p9, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$totalPreviewLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoFacadeImpl;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$700(Lcom/android/camera/panorama/PanoFacadeImpl;)Lcom/android/camera/panorama/PanoReadyStateChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$preview:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$fullImgWidth:I

    iget v3, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$fullImgHeight:I

    iget-object v4, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$previewAttr:[I

    iget v5, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$direction:I

    iget-object v6, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$offset:[I

    iget v7, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$progress:I

    iget v8, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$totalPreviewLength:I

    invoke-interface/range {v0 .. v8}, Lcom/android/camera/panorama/PanoReadyStateChangeListener;->onPanoramaPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V

    .line 179
    iget v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->val$progress:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 180
    invoke-static {}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "progcess done, stop panorama."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$3;->this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoFacadeImpl;->stopBurst()Z

    .line 184
    :cond_0
    return-void
.end method
