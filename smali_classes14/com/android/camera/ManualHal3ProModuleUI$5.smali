.class Lcom/android/camera/ManualHal3ProModuleUI$5;
.super Ljava/lang/Object;
.source "ManualHal3ProModuleUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualHal3ProModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3ProModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3ProModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f020272

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "selectSeekBarVisible":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 560
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-virtual {v3}, Lcom/android/camera/ManualHal3ProModuleUI;->foldAllOptions()V

    .line 561
    if-eqz v0, :cond_6

    .line 591
    :cond_0
    :goto_1
    return-void

    .line 545
    :sswitch_0
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v3}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1800(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ProModeSeekBar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 546
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v2

    .line 545
    goto :goto_2

    .line 548
    :sswitch_1
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v3}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1900(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ProModeSeekBar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 549
    :goto_3
    goto :goto_0

    :cond_2
    move v0, v2

    .line 548
    goto :goto_3

    .line 551
    :sswitch_2
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v3}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2000(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ProModeSeekBar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 552
    :goto_4
    goto :goto_0

    :cond_3
    move v0, v2

    .line 551
    goto :goto_4

    .line 554
    :sswitch_3
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v3}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2100(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ProModeSeekBar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    .line 555
    :goto_5
    goto :goto_0

    :cond_4
    move v0, v2

    .line 554
    goto :goto_5

    .line 557
    :sswitch_4
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v3}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2200(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ProModeSeekBar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    :goto_6
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_6

    .line 564
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    .line 581
    :sswitch_5
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v4, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0800dd

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2300(Lcom/android/camera/ManualHal3ProModuleUI;Ljava/lang/String;)V

    .line 582
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v4, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2100(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2400(Lcom/android/camera/ManualHal3ProModuleUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 583
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2800(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2800(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 566
    :sswitch_6
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v4, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0800d9

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2300(Lcom/android/camera/ManualHal3ProModuleUI;Ljava/lang/String;)V

    .line 567
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v4, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1800(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2400(Lcom/android/camera/ManualHal3ProModuleUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 568
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2500(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2500(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 571
    :sswitch_7
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v4, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0800de

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2300(Lcom/android/camera/ManualHal3ProModuleUI;Ljava/lang/String;)V

    .line 572
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v4, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1900(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2400(Lcom/android/camera/ManualHal3ProModuleUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 573
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2600(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2600(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 576
    :sswitch_8
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v4, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0800dc

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2300(Lcom/android/camera/ManualHal3ProModuleUI;Ljava/lang/String;)V

    .line 577
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v4, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2000(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2400(Lcom/android/camera/ManualHal3ProModuleUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 578
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2700(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2700(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 586
    :sswitch_9
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v4, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0800da

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2300(Lcom/android/camera/ManualHal3ProModuleUI;Ljava/lang/String;)V

    .line 587
    iget-object v3, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v4, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v4}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2200(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ui/ProModeSeekBar;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2400(Lcom/android/camera/ManualHal3ProModuleUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 588
    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2900(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$2900(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3ProModuleUI$5;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v2}, Lcom/android/camera/ManualHal3ProModuleUI;->access$1600(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 543
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0168 -> :sswitch_3
        0x7f0f016b -> :sswitch_2
        0x7f0f016e -> :sswitch_4
        0x7f0f0171 -> :sswitch_1
        0x7f0f0174 -> :sswitch_0
    .end sparse-switch

    .line 564
    :sswitch_data_1
    .sparse-switch
        0x7f0f0168 -> :sswitch_5
        0x7f0f016b -> :sswitch_8
        0x7f0f016e -> :sswitch_9
        0x7f0f0171 -> :sswitch_7
        0x7f0f0174 -> :sswitch_6
    .end sparse-switch
.end method
