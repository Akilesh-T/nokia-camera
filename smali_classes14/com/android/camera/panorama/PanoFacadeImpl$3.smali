.class Lcom/android/camera/panorama/PanoFacadeImpl$3;
.super Ljava/lang/Object;
.source "PanoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoFacadeImpl;->stopBurst()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/panorama/PanoFacadeImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoFacadeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/panorama/PanoFacadeImpl;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$3;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$3;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$700(Lcom/android/camera/panorama/PanoFacadeImpl;)Lcom/android/camera/panorama/PanoReadyStateChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoReadyStateChangeListener;->onPanoramaStoping()V

    .line 288
    return-void
.end method
