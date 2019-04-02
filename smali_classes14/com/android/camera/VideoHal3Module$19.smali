.class Lcom/android/camera/VideoHal3Module$19;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module;->getEffectChooseCallback()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 1708
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$19;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$19;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$19;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$19;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectChooseManager;->showOrHidePanel(Z)V

    .line 1712
    return-void

    .line 1711
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
