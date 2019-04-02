.class Lcom/android/camera/CaptureModule$15;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$session:Lcom/android/camera/session/CaptureSession;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 1896
    iput-object p1, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/CaptureModule$15;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f070019

    const/4 v2, 0x0

    .line 1900
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CaptureModule$15$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$15$1;-><init>(Lcom/android/camera/CaptureModule$15;)V

    invoke-interface {v0, v2, v1}, Lcom/android/camera/app/AppController;->startFlashAnimation(ZLjava/lang/Runnable;)V

    .line 1927
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$3000(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1928
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1929
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    new-instance v1, Lcom/android/camera/SoundPlayer;

    iget-object v2, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$2702(Lcom/android/camera/CaptureModule;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;

    .line 1933
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2800(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1934
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1935
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1936
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1937
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$2802(Lcom/android/camera/CaptureModule;Z)Z

    .line 1940
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/SoundPlayer;->play(IF)V

    .line 1950
    :cond_2
    :goto_0
    return-void

    .line 1942
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2600(Lcom/android/camera/CaptureModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1943
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$2602(Lcom/android/camera/CaptureModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 1944
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2600(Lcom/android/camera/CaptureModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaActionSound;->load(I)V

    .line 1946
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CaptureModule$15;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2600(Lcom/android/camera/CaptureModule;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0
.end method
