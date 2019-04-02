.class Lcom/android/camera/panorama/PanoFacadeImpl$2$1$1;
.super Ljava/lang/Object;
.source "PanoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->onPanoramaWarning(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

.field final synthetic val$warning:I


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoFacadeImpl$2$1;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$1;->this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    iput p2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$1;->val$warning:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$1;->this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoFacadeImpl;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$1;->this$2:Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$700(Lcom/android/camera/panorama/PanoFacadeImpl;)Lcom/android/camera/panorama/PanoReadyStateChangeListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1$1;->val$warning:I

    invoke-interface {v0, v1}, Lcom/android/camera/panorama/PanoReadyStateChangeListener;->onPanoramaHint(I)V

    .line 157
    :cond_0
    return-void
.end method
