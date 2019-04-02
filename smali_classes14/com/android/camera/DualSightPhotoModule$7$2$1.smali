.class Lcom/android/camera/DualSightPhotoModule$7$2$1;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule$7$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/DualSightPhotoModule$7$2;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule$7$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/DualSightPhotoModule$7$2;

    .prologue
    .line 950
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 953
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v5, v5, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget v5, v5, Lcom/android/camera/DualSightPhotoModule$7;->val$orientation:I

    invoke-interface {v4, v5}, Lcom/android/camera/app/AppController;->getBitMapFromPreview(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 954
    .local v3, "preview":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 956
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightPhotoModule;->access$2800(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 957
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v4, v3}, Lcom/android/camera/DualSightPhotoModule;->access$2900(Lcom/android/camera/DualSightPhotoModule;Landroid/graphics/Bitmap;)V

    .line 960
    :cond_0
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TS] onPreviewTaken mIsTSFirstShot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v6, v6, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v6, v6, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v6}, Lcom/android/camera/DualSightPhotoModule;->access$3000(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDisableRefreshThumbnail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v6, v6, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v6, v6, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v6}, Lcom/android/camera/DualSightPhotoModule;->access$3100(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isTSActive():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v6, v6, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v6, v6, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v6}, Lcom/android/camera/DualSightPhotoModule;->access$2800(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 961
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightPhotoModule;->access$3100(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 963
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v2

    .line 964
    .local v2, "isBeautyOn":Z
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_effect_mode_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v1

    .line 966
    .local v1, "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    if-nez v2, :cond_1

    sget-object v4, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-eq v1, v4, :cond_4

    .line 968
    :cond_1
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "[TS] if Effect on"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 970
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightPhotoModule;->access$2800(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 972
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->val$session:Lcom/android/camera/session/CaptureSession;

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v5, v5, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v5, v5, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v5}, Lcom/android/camera/DualSightPhotoModule;->access$3200(Lcom/android/camera/DualSightPhotoModule;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 973
    new-instance v4, Lcom/android/camera/DualSightPhotoModule$7$2$1$1;

    invoke-direct {v4, p0}, Lcom/android/camera/DualSightPhotoModule$7$2$1$1;-><init>(Lcom/android/camera/DualSightPhotoModule$7$2$1;)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1038
    .end local v1    # "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    .end local v2    # "isBeautyOn":Z
    :cond_2
    :goto_0
    return-void

    .line 989
    .restart local v1    # "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    .restart local v2    # "isBeautyOn":Z
    :cond_3
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v4, v3, v7}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 990
    new-instance v4, Lcom/android/camera/DualSightPhotoModule$7$2$1$2;

    invoke-direct {v4, p0, v3}, Lcom/android/camera/DualSightPhotoModule$7$2$1$2;-><init>(Lcom/android/camera/DualSightPhotoModule$7$2$1;Landroid/graphics/Bitmap;)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1007
    :cond_4
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "[TS] if Effect off"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1009
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v4, v3, v7}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 1010
    new-instance v4, Lcom/android/camera/DualSightPhotoModule$7$2$1$3;

    invoke-direct {v4, p0, v3}, Lcom/android/camera/DualSightPhotoModule$7$2$1$3;-><init>(Lcom/android/camera/DualSightPhotoModule$7$2$1;Landroid/graphics/Bitmap;)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1029
    .end local v1    # "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    .end local v2    # "isBeautyOn":Z
    :cond_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1030
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1031
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/DualSightPhotoModule;->access$3302(Lcom/android/camera/DualSightPhotoModule;[B)[B

    .line 1032
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 1034
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$7$2$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$2;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7$2;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/camera/DualSightPhotoModule;->access$3400(Lcom/android/camera/DualSightPhotoModule;Z)V

    goto :goto_0
.end method
