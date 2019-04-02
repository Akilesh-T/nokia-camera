.class Lcom/android/camera/DualSightPhotoModule$7$1;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule$7;->onQuickExpose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/DualSightPhotoModule$7;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/DualSightPhotoModule$7;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 841
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1400(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    new-instance v1, Lcom/android/camera/DualSightPhotoModule$7$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModule$7$1$1;-><init>(Lcom/android/camera/DualSightPhotoModule$7$1;)V

    invoke-interface {v0, v2, v1}, Lcom/android/camera/app/AppController;->startFlashAnimation(ZLjava/lang/Runnable;)V

    .line 895
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2000(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1600(Lcom/android/camera/DualSightPhotoModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    if-nez v0, :cond_2

    .line 897
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/DualSightPhotoModule;->access$1602(Lcom/android/camera/DualSightPhotoModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 898
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1600(Lcom/android/camera/DualSightPhotoModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaActionSound;->load(I)V

    .line 900
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1600(Lcom/android/camera/DualSightPhotoModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0
.end method
