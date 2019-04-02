.class Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;
.super Ljava/lang/Object;
.source "BokehHal3ModuleUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehHal3ModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManualOptionsClickHandler"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/BokehHal3ModuleUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/BokehHal3ModuleUI;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p2, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    .line 398
    return-void
.end method

.method private foldOptionLayout()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    const-string v1, "pref_zeiss_bokeh_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3ModuleUI;->foldAllOptions()V

    .line 429
    :cond_0
    return-void
.end method

.method private resetBackgroundResource(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0f0157

    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 433
    .local v2, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 434
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 435
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 436
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 437
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 434
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020273

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 441
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;->resetBackgroundResource(Landroid/view/View;)V

    .line 403
    invoke-direct {p0}, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;->foldOptionLayout()V

    .line 404
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;->onManualItemSelected(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public onManualItemSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v4, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v4}, Lcom/android/camera/BokehHal3ModuleUI;->access$1800(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    invoke-virtual {v4, v5, p1}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 411
    iget-object v4, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v4}, Lcom/android/camera/BokehHal3ModuleUI;->access$1800(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    .line 412
    .local v3, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v4, "default_scope"

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v4}, Lcom/android/camera/BokehHal3ModuleUI;->access$1800(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0d00e8

    invoke-static {v4, v5}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v2

    .line 416
    .local v2, "indicators":[I
    iget-object v4, p0, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v4}, Lcom/android/camera/BokehHal3ModuleUI;->access$1900(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v2    # "indicators":[I
    :goto_0
    invoke-static {}, Lcom/android/camera/BokehHal3ModuleUI;->access$2000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onManualItemSelected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 423
    .end local v3    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    return-void

    .line 417
    .restart local v3    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/BokehHal3ModuleUI;->access$2000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onManualItemSelected error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
