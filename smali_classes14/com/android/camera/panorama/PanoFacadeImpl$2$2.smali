.class Lcom/android/camera/panorama/PanoFacadeImpl$2$2;
.super Ljava/lang/Object;
.source "PanoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoFacadeImpl$2;->onBurstStarted()V
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
    .line 204
    iput-object p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$2;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$2;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$700(Lcom/android/camera/panorama/PanoFacadeImpl;)Lcom/android/camera/panorama/PanoReadyStateChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoReadyStateChangeListener;->onPanoramaStarted()V

    .line 208
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$2;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$500(Lcom/android/camera/panorama/PanoFacadeImpl;Z)V

    .line 209
    return-void
.end method
