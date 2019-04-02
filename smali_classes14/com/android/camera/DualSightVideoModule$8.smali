.class Lcom/android/camera/DualSightVideoModule$8;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule;->onQuickExpose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$8;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 885
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$8;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1300(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$8;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 888
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$8;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1300(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$8;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1700(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$8;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1500(Lcom/android/camera/DualSightVideoModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    if-nez v0, :cond_2

    .line 891
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$8;->this$0:Lcom/android/camera/DualSightVideoModule;

    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/DualSightVideoModule;->access$1502(Lcom/android/camera/DualSightVideoModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 892
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$8;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1500(Lcom/android/camera/DualSightVideoModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaActionSound;->load(I)V

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$8;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1500(Lcom/android/camera/DualSightVideoModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0
.end method
