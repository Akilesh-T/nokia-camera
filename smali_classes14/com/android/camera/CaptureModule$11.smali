.class Lcom/android/camera/CaptureModule$11;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->onQuickExpose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f070019

    const/4 v3, 0x0

    .line 1264
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2400(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 1268
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$4100(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 1269
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$4100(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1270
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v2, "fake enable shutter"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->setFakeShutterButtonEnabled()V

    .line 1272
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->setFakeSwitchButtonEnabled()V

    .line 1276
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$3000(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1280
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1281
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    new-instance v1, Lcom/android/camera/SoundPlayer;

    iget-object v2, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$2702(Lcom/android/camera/CaptureModule;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;

    .line 1284
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2800(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1285
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1286
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1287
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1288
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$2802(Lcom/android/camera/CaptureModule;Z)Z

    .line 1291
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v4, v1}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto/16 :goto_0

    .line 1274
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v2, "ignore fake enable shutter action when state ready"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 1276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1293
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2600(Lcom/android/camera/CaptureModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1294
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$2602(Lcom/android/camera/CaptureModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 1295
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2600(Lcom/android/camera/CaptureModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 1297
    :cond_6
    iget-object v0, p0, Lcom/android/camera/CaptureModule$11;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2600(Lcom/android/camera/CaptureModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->play(I)V

    goto/16 :goto_0
.end method
