.class Lcom/android/camera/StorageStateManager$2;
.super Landroid/os/AsyncTask;
.source "StorageStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/StorageStateManager;->updateStoragePathIfNecessary(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/StorageStateManager;

.field final synthetic val$showToast:Z


# direct methods
.method constructor <init>(Lcom/android/camera/StorageStateManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/StorageStateManager;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    iput-boolean p2, p0, Lcom/android/camera/StorageStateManager$2;->val$showToast:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const v10, 0x7f0803de

    const/4 v4, 0x0

    const v9, 0x7f0803df

    .line 217
    iget-object v5, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v5}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->isPaused()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 242
    :goto_0
    return-object v4

    .line 219
    :cond_0
    iget-object v5, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v5}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "SDCARD":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v5}, Lcom/android/camera/StorageStateManager;->access$600(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_data_storage_key"

    iget-object v8, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v8}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "storePath":Ljava/lang/String;
    move-object v1, v2

    .line 222
    .local v1, "preStorePath":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v5}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/Storage;->isSDCardAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 223
    iget-object v5, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v5}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    :cond_1
    sget-object v5, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The user chose "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", and we get "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", and currently is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/Storage;->getStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    sget-object v5, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The current DCIM is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/Storage;->getDCIMPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", and SD DCIM is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/Storage;->getSDCardDCIM()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, "storePathChanged":Z
    invoke-static {}, Lcom/android/camera/Storage;->getStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 230
    const/4 v3, 0x1

    .line 236
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 237
    invoke-static {v2}, Lcom/android/camera/Storage;->setStoragePath(Ljava/lang/String;)V

    .line 239
    :cond_3
    iget-object v5, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v5}, Lcom/android/camera/StorageStateManager;->access$400(Lcom/android/camera/StorageStateManager;)V

    .line 240
    iget-object v5, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v5}, Lcom/android/camera/StorageStateManager;->access$300(Lcom/android/camera/StorageStateManager;)V

    .line 242
    iget-boolean v5, p0, Lcom/android/camera/StorageStateManager$2;->val$showToast:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v5}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/Storage;->getStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 231
    :cond_5
    iget-object v5, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v5}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/camera/Storage;->getDCIMPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/Storage;->getSDCardDCIM()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 232
    sget-object v5, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "The SD card path is changed. Therefore, we need to update it!"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    const/4 v3, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/StorageStateManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "showHint"    # Ljava/lang/Boolean;

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v1}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v1}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v1}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 251
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v1}, Lcom/android/camera/StorageStateManager;->access$700(Lcom/android/camera/StorageStateManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/StorageStateManager$2$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/StorageStateManager$2$1;-><init>(Lcom/android/camera/StorageStateManager$2;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 214
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/camera/StorageStateManager$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
