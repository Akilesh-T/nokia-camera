.class Lcom/android/camera/PanoramaHal3Module$7;
.super Ljava/lang/Object;
.source "PanoramaHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaHal3Module;->onQuickExpose()V
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
    .line 693
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module$7;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$7;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$1500(Lcom/android/camera/PanoramaHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$7;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    goto :goto_0
.end method
