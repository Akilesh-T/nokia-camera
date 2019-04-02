.class Lcom/android/camera/BokehHal3Module$10;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module;->onQuickExpose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f070019

    const/4 v2, 0x0

    .line 965
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$200(Lcom/android/camera/BokehHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 968
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2300(Lcom/android/camera/BokehHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 970
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 971
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    new-instance v1, Lcom/android/camera/SoundPlayer;

    iget-object v2, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v2}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/camera/BokehHal3Module;->access$2002(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;

    .line 974
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2100(Lcom/android/camera/BokehHal3Module;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 975
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 976
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 977
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 978
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/BokehHal3Module;->access$2102(Lcom/android/camera/BokehHal3Module;Z)Z

    .line 981
    :cond_3
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0

    .line 983
    :cond_4
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1900(Lcom/android/camera/BokehHal3Module;)Landroid/media/MediaActionSound;

    move-result-object v0

    if-nez v0, :cond_5

    .line 984
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/BokehHal3Module;->access$1902(Lcom/android/camera/BokehHal3Module;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 985
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1900(Lcom/android/camera/BokehHal3Module;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaActionSound;->load(I)V

    .line 987
    :cond_5
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$10;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1900(Lcom/android/camera/BokehHal3Module;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaActionSound;->play(I)V

    goto/16 :goto_0
.end method
