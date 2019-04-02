.class Lcom/android/camera/panorama/PanoFacadeImpl$2$1$2;
.super Ljava/lang/Object;
.source "PanoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->onPanoramaFailed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoFacadeImpl$2$1;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$2;->this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    iput p2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$2;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$2;->this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$700(Lcom/android/camera/panorama/PanoFacadeImpl;)Lcom/android/camera/panorama/PanoReadyStateChangeListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$2;->val$error:I

    invoke-interface {v0, v1}, Lcom/android/camera/panorama/PanoReadyStateChangeListener;->onPanoramaFailed(I)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$2;->this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPanoramaFailed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$2;->val$error:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/panorama/PanoFacadeImpl$2;->onBurstError(Ljava/lang/Exception;)V

    .line 168
    return-void
.end method
