.class Lcom/android/camera/burst/BurstManager$1$1;
.super Landroid/os/AsyncTask;
.source "BurstManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstManager$1;->onBurstMediaSaved(Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[",
        "Landroid/content/ContentValues;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/burst/BurstManager$1;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/burst/BurstManager$1;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    check-cast p1, [[Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/android/camera/burst/BurstManager$1$1;->doInBackground([[Landroid/content/ContentValues;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[Landroid/content/ContentValues;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [[Landroid/content/ContentValues;

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    iget-object v0, v0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v0}, Lcom/android/camera/burst/BurstManager;->access$200(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 85
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    iget-object v0, v0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v0}, Lcom/android/camera/burst/BurstManager;->access$200(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    iget-object v0, v0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v0}, Lcom/android/camera/burst/BurstManager;->access$200(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    iget-object v0, v0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v0}, Lcom/android/camera/burst/BurstManager;->access$200(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->requireUpdateThumbnail()V

    .line 88
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    iget-object v0, v0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v0}, Lcom/android/camera/burst/BurstManager;->access$300(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v9

    .line 89
    .local v9, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    iget-object v0, v0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    .line 91
    invoke-static {v0}, Lcom/android/camera/burst/BurstManager;->access$300(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v9, v0}, Lcom/android/camera/settings/Keys;->isCameraBackFacing(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .local v6, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    iget-object v0, v0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    iget-object v1, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    iget-object v1, v1, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v1}, Lcom/android/camera/burst/BurstManager;->access$300(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    iget-object v3, v3, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    .line 94
    invoke-static {v3}, Lcom/android/camera/burst/BurstManager;->access$300(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraProvider;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    .line 93
    invoke-virtual {v1, v3, v6}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/burst/BurstManager;->access$402(Lcom/android/camera/burst/BurstManager;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    iget-object v1, v1, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v1}, Lcom/android/camera/burst/BurstManager;->access$400(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->getCurrentResolution(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "pictureResolutionData":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    iget-object v4, v4, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v4}, Lcom/android/camera/burst/BurstManager;->access$500(Lcom/android/camera/burst/BurstManager;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/UsageStatistics;->photoCaptureDoneEvent(ILjava/lang/String;ZJ)V

    .line 107
    .end local v2    # "pictureResolutionData":Ljava/lang/String;
    .end local v6    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v9    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 90
    .restart local v9    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_1
    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0

    .line 96
    .restart local v6    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :catch_0
    move-exception v8

    .line 97
    .local v8, "ex":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager$1$1;->this$1:Lcom/android/camera/burst/BurstManager$1;

    iget-object v0, v0, Lcom/android/camera/burst/BurstManager$1;->this$0:Lcom/android/camera/burst/BurstManager;

    invoke-static {v0}, Lcom/android/camera/burst/BurstManager;->access$300(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 104
    .end local v6    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v8    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .end local v9    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :catch_1
    move-exception v7

    .line 105
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/camera/burst/BurstManager;->access$600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bulkInsert to MediaStore : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2
.end method
