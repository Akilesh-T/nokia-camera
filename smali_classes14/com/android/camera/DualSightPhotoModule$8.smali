.class Lcom/android/camera/DualSightPhotoModule$8;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule;->onQuickExpose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f070019

    const/4 v2, 0x0

    .line 1238
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1400(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 1241
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2000(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1243
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1244
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    new-instance v1, Lcom/android/camera/SoundPlayer;

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/camera/DualSightPhotoModule;->access$1702(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;

    .line 1247
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1800(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1248
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1249
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1250
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1251
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/DualSightPhotoModule;->access$1802(Lcom/android/camera/DualSightPhotoModule;Z)Z

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0

    .line 1256
    :cond_4
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1600(Lcom/android/camera/DualSightPhotoModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1257
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/DualSightPhotoModule;->access$1602(Lcom/android/camera/DualSightPhotoModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 1258
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1600(Lcom/android/camera/DualSightPhotoModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaActionSound;->load(I)V

    .line 1260
    :cond_5
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$8;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1600(Lcom/android/camera/DualSightPhotoModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaActionSound;->play(I)V

    goto/16 :goto_0
.end method
