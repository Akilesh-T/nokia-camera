.class Lcom/android/camera/effect/EffectChooseManager$5;
.super Ljava/lang/Object;
.source "EffectChooseManager.java"

# interfaces
.implements Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;


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
    .line 308
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellClick(ILjava/lang/String;)V
    .locals 10
    .param p1, "effectKey"    # I
    .param p2, "effectContent"    # Ljava/lang/String;

    .prologue
    const v9, 0x7f020298

    .line 311
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$700(Lcom/android/camera/effect/EffectChooseManager;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-static {p1}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v4

    .line 313
    .local v4, "state":Lcom/android/camera/effect/EffectChooseState;
    sget-object v5, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-eq v4, v5, :cond_0

    .line 314
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 322
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$600(Lcom/android/camera/effect/EffectChooseManager;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 323
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_sticker_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_animoji_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_portrait_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_mode_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "defaultValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/camera/app/GalleryStyleUI;->clearEffectContentBackground(Ljava/lang/String;)V

    .line 329
    :cond_2
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$1000(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v5

    const v6, 0x7f020299

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 330
    .end local v1    # "defaultValue":Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/android/camera/effect/EffectChooseState;->STICKER:Lcom/android/camera/effect/EffectChooseState;

    if-ne v4, v5, :cond_5

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "resStr":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v2, "resPath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 334
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_animoji_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_portrait_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_sticker_key"

    invoke-virtual {v5, v6, v7, p2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_choose_key"

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_mode_key"

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$1000(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 341
    :cond_4
    invoke-static {}, Lcom/android/camera/effect/EffectChooseManager;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Sticker file still not exist! Do cloud download!"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    .end local v2    # "resPath":Ljava/io/File;
    .end local v3    # "resStr":Ljava/lang/String;
    :cond_5
    sget-object v5, Lcom/android/camera/effect/EffectChooseState;->ANIMOJI:Lcom/android/camera/effect/EffectChooseState;

    if-ne v4, v5, :cond_7

    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    .restart local v3    # "resStr":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .restart local v2    # "resPath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 347
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_sticker_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_portrait_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_animoji_key"

    invoke-virtual {v5, v6, v7, p2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_choose_key"

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_mode_key"

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$1000(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 354
    :cond_6
    invoke-static {}, Lcom/android/camera/effect/EffectChooseManager;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Animoji file still not exist! Do cloud download!"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    .end local v2    # "resPath":Ljava/io/File;
    .end local v3    # "resStr":Ljava/lang/String;
    :cond_7
    sget-object v5, Lcom/android/camera/effect/EffectChooseState;->LIGHTEN:Lcom/android/camera/effect/EffectChooseState;

    if-ne v4, v5, :cond_0

    .line 357
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_sticker_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_animoji_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_portrait_key"

    invoke-virtual {v5, v6, v7, p2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_choose_key"

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_mode_key"

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager$5;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseManager;->access$1000(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
