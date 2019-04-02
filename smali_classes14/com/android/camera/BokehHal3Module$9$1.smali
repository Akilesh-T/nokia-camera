.class Lcom/android/camera/BokehHal3Module$9$1;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module$9;->onQuickExpose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/BokehHal3Module$9;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/BokehHal3Module$9;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f070019

    const/4 v3, 0x0

    .line 758
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$200(Lcom/android/camera/BokehHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    new-instance v1, Lcom/android/camera/BokehHal3Module$9$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3Module$9$1$1;-><init>(Lcom/android/camera/BokehHal3Module$9$1;)V

    invoke-interface {v0, v3, v1}, Lcom/android/camera/app/AppController;->startFlashAnimation(ZLjava/lang/Runnable;)V

    .line 781
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$3200(Lcom/android/camera/BokehHal3Module;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$3200(Lcom/android/camera/BokehHal3Module;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 783
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v2, "fake enable shutter"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->setFakeShutterButtonEnabled()V

    .line 785
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->setFakeSwitchButtonEnabled()V

    .line 789
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2300(Lcom/android/camera/BokehHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 792
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 793
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    new-instance v1, Lcom/android/camera/SoundPlayer;

    iget-object v2, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v2, v2, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v2}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/camera/BokehHal3Module;->access$2002(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2100(Lcom/android/camera/BokehHal3Module;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 798
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 799
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 800
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 801
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/BokehHal3Module;->access$2102(Lcom/android/camera/BokehHal3Module;Z)Z

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v4, v1}, Lcom/android/camera/SoundPlayer;->play(IF)V

    .line 813
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$3300(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/BokehHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3ModuleUI;->showHintToastIfConfigured()V

    goto/16 :goto_0

    .line 787
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v2, "ignore fake enable shutter action when state ready"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 806
    :cond_5
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1900(Lcom/android/camera/BokehHal3Module;)Landroid/media/MediaActionSound;

    move-result-object v0

    if-nez v0, :cond_6

    .line 807
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/BokehHal3Module;->access$1902(Lcom/android/camera/BokehHal3Module;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 808
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1900(Lcom/android/camera/BokehHal3Module;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 810
    :cond_6
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1900(Lcom/android/camera/BokehHal3Module;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_2
.end method
