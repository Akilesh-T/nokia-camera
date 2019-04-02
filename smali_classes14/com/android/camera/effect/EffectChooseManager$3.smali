.class Lcom/android/camera/effect/EffectChooseManager$3;
.super Ljava/lang/Object;
.source "EffectChooseManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 252
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$600(Lcom/android/camera/effect/EffectChooseManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$700(Lcom/android/camera/effect/EffectChooseManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_camera_sticker_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_camera_animoji_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_camera_portrait_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_camera_effect_mode_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_camera_effect_choose_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v1

    .line 263
    .local v1, "state":Lcom/android/camera/effect/EffectChooseState;
    sget-object v2, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-eq v1, v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectChooseState;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "defaultValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 266
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/app/GalleryStyleUI;->clearEffectContentBackground(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/GalleryStyleUI;->quitUnloadMode()V

    .line 268
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/GalleryStyleUI;->requestLayout()V

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$3;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$1000(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v2

    const v3, 0x7f020299

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
