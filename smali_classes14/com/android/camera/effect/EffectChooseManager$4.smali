.class Lcom/android/camera/effect/EffectChooseManager$4;
.super Ljava/lang/Object;
.source "EffectChooseManager.java"

# interfaces
.implements Lcom/android/camera/app/EffectListViewAdapter$OnItemClickListener;


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
    .line 288
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager$4;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$4;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$700(Lcom/android/camera/effect/EffectChooseManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$4;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_camera_effect_choose_key"

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$4;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$1100(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$4;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$1200(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager$4;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v4}, Lcom/android/camera/effect/EffectChooseManager;->access$1300(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v3, p1, v2, v4}, Lcom/android/camera/effect/EffectChooseState;->fromValue(Landroid/content/Context;IZLcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v1

    .line 294
    .local v1, "state":Lcom/android/camera/effect/EffectChooseState;
    sget-object v2, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-eq v1, v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$4;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectChooseState;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "currentContent":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$4;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$4;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/app/GalleryStyleUI;->changeDataKey(ILjava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$4;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/GalleryStyleUI;->requestLayout()V

    .line 299
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager$4;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/GalleryStyleUI;->quitUnloadMode()V

    goto :goto_0

    .line 293
    .end local v0    # "currentContent":Ljava/lang/String;
    .end local v1    # "state":Lcom/android/camera/effect/EffectChooseState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
