.class Lcom/android/camera/PanoramaHal3Module$8;
.super Ljava/lang/Object;
.source "PanoramaHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaHal3Module;->reopenCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module$8;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$8;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$1100(Lcom/android/camera/PanoramaHal3Module;)V

    .line 742
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$8;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$1500(Lcom/android/camera/PanoramaHal3Module;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$8;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$2700(Lcom/android/camera/PanoramaHal3Module;)V

    .line 745
    :cond_0
    return-void
.end method
