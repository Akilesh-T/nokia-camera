.class Lcom/android/camera/effect/EffectChooseManager$7;
.super Ljava/lang/Object;
.source "EffectChooseManager.java"

# interfaces
.implements Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectChooseManager;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectChooseManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectChooseManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager$7;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteIconClick(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "effectKey"    # I
    .param p3, "effectContent"    # Ljava/lang/String;
    .param p4, "currentValue"    # Ljava/lang/String;
    .param p5, "abandoned"    # Z

    .prologue
    .line 382
    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager$7;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/camera/app/GalleryStyleUI;->getDownloadStatus(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 383
    new-instance v3, Lcom/android/camera/effect/util/UnloadDialog;

    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager$7;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseManager;->access$1400(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/AppController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$7;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/effect/EffectChooseManager$7;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/camera/effect/util/UnloadDialog;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/app/GalleryStyleUI;Lcom/android/camera/effect/EffectChooseManager;)V

    .line 384
    .local v3, "unloadDialog":Lcom/android/camera/effect/util/UnloadDialog;
    invoke-static {p2}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getStringFromValue(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "CEffectKey":Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 386
    invoke-virtual {v3, p1, v0, p3, p4}, Lcom/android/camera/effect/util/UnloadDialog;->showDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .end local v0    # "CEffectKey":Ljava/lang/String;
    .end local v3    # "unloadDialog":Lcom/android/camera/effect/util/UnloadDialog;
    :cond_0
    :goto_0
    return-void

    .line 389
    .restart local v0    # "CEffectKey":Ljava/lang/String;
    .restart local v3    # "unloadDialog":Lcom/android/camera/effect/util/UnloadDialog;
    :cond_1
    invoke-virtual {v3, p1, v0, p3, p4}, Lcom/android/camera/effect/util/UnloadDialog;->unloadCloudisExist(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager$7;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_sticker_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager$7;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_animoji_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager$7;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_portrait_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager$7;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_camera_effect_mode_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {p2}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v2

    .line 397
    .local v2, "state":Lcom/android/camera/effect/EffectChooseState;
    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager$7;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectChooseState;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "defaultValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager$7;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager$7;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/app/GalleryStyleUI;->clearEffectContentBackground(Ljava/lang/String;)V

    goto :goto_0
.end method
